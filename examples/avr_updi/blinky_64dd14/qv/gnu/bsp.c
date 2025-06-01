/*****************************************************************************
 * Product: Blinky example, Arduino-UNO board, cooperative QV kernel, GNU-AVR
 * Last Updated for Version: 5.4.0
 * Date of the Last Update:  2015-04-08
 *
 *                    Q u a n t u m     L e a P s
 *                    ---------------------------
 *                    innovating embedded systems
 *
 * Copyright (C) Quantum Leaps, LLC. state-machine.com.
 *
 * This program is open source software: you can redistribute it and/or
 * modify it under the terms of the GNU General Public License as published
 * by the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Alternatively, this program may be distributed and modified under the
 * terms of Quantum Leaps commercial licenses, which expressly supersede
 * the GNU General Public License and are specifically designed for
 * licensees interested in retaining the proprietary status of their code.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <www.gnu.org/licenses/>.
 *
 * Contact information:
 * <www.state-machine.com/licensing>
 * <info@state-machine.com>
 *****************************************************************************/
#include "qpn.h"
#include "qfn.h"
#include "blinky.h"
#include "bsp.h"
#include "signals.h"

/* the AVR device specific header <avr/io.h> is already included */
/* add other drivers if necessary... */

//Q_DEFINE_THIS_FILE


/* Local-scope objects -----------------------------------------------------*/
/* Default clock speed */
#define F_CPU 3333333UL

/* Rotary encoder ----------------------------------------------------------*/
static void setupTimer(void);
static void debounceRotaryEncoder(void);
static void debouncePushButton(void);

#define BSP_ENCODER_PORT PORTD
#define BSP_ENCODER_PUSH_bm (PIN3_bm)
#define BSP_ENCODER_I_bm (PIN4_bm)
#define BSP_ENCODER_Q_bm (PIN5_bm)

/* the on-board LED labeled "L" on Arduino-UNO (PORTB) */
#define BSP_LED_PORT PORTD
#define BSP_LED_L (PIN4_bm)
#define BSP_LED_H (PIN5_bm)



/* ISRs used in this project ===============================================*/
ISR(TCB0_INT_vect)
{
    //BSP_LED_PORT.OUTCLR = BSP_LED_H;
    
    TCB0.INTFLAGS = TCB_CAPT_bm;
    //BSP_LED_PORT.OUTTGL = BSP_LED_H;
    QF_tickXISR(0U); /* process time events for rate 0 */
}

/* BSP functions ===========================================================*/
void BSP_init(void)
{
    BSP_LED_PORT.DIR = BSP_LED_L | BSP_LED_H;
    BSP_LED_PORT.PIN4CTRL = PORT_INVEN_bm;
    BSP_LED_PORT.PIN5CTRL = PORT_INVEN_bm;
}

void BSP_ledOff(void)
{
    BSP_LED_PORT.OUTSET = BSP_LED_L;
}

void BSP_ledOn(void)
{
    BSP_LED_PORT.OUTCLR = BSP_LED_L;
}

void BSP_ledOffH(void)
{
    BSP_LED_PORT.OUTSET = BSP_LED_H;
}

void BSP_ledOnH(void)
{
    BSP_LED_PORT.OUTCLR = BSP_LED_H;
}

void BSP_terminate(int16_t result)
{
    (void)result;
}

/* QF callbacks ============================================================*/
void QF_onStartup(void)
{
    // Use timer TCB0 for time events
    TCB0.INTCTRL |= TCB_CAPT_bm;
    TCB0.CTRLA |= TCB_ENABLE_bm;
    TCB0.CCMP = 33333U;
    
    setupTimer();
}

void QF_onCleanup(void)
{
}

void QV_onIdle(void)
{ /* called with interrupts DISABLED, see NOTE1 */
    /* toggle the User LED, see NOTE2 , not enough LEDs to implement! */
    //BSP_LED_PORT.OUTSET = BSP_LED_H;

#ifdef NDEBUG
    /* Put the CPU and peripherals to the low-power mode.
     * you might need to customize the clock management for your application,
     * see the datasheet for your particular AVR MCU.
     */
    SLPCTRL.CTRLA = 0x01;
    //    SMCR = (0 << SM0) | (1 << SE); /* idle mode, adjust to your project */
    QV_CPU_SLEEP(); /* atomically go to sleep and enable interrupts */
#else
    QF_INT_ENABLE(); /* just enable interrupts */
#endif
    //BSP_LED_PORT.OUTCLR = BSP_LED_H;
}

Q_NORETURN Q_onAssert(char const Q_ROM *const file, int line)
{
    /* implement the error-handling policy for your application!!! */
    QF_INT_DISABLE(); /* disable all interrupts */
    QF_RESET();       /* reset the CPU */
    for (;;)
    {
    }
}



static void setupTimer(void)
{
    /* Wait for all register to be synchronized */
    while (RTC.PITSTATUS > 0)
        ;

    RTC.PITCTRLA = RTC_PERIOD_CYC16_gc | 1 << RTC_PITEN_bp; 
    RTC.PITINTCTRL = 1 << RTC_PI_bp; 
}


/* This timer interrupt routine is called with a rate of 2.048kHz */
ISR(RTC_PIT_vect)
{
    static volatile uint16_t ticks;
    
    ticks++;

    QF_tickXISR(1U);

    debounceRotaryEncoder();

    // debounce rotary encoder push button
    // 8ms time raster
    if ((ticks % 16) == 0)
    {
        debouncePushButton();
    }

    if ((ticks % 2048) == 0)
    {
        QACTIVE_POST_ISR(&AO_Blinky, ONESECOND_SIG, 0U);
    }

    RTC.PITINTFLAGS = RTC_PI_bm;
}


static void debounceRotaryEncoder(void)
{
    static const int8_t encoderTable[16] = {0, 0, -1, 0, 0, 0, 0, 0, +1, 0, 0, 0, 0, 0, 0, 0};
    static volatile uint8_t encoderState;

    encoderState = ((encoderState << 2) + ((BSP_ENCODER_PORT.IN >> 4) & 0x03)) & 0x0f;
    int8_t step = encoderTable[encoderState];
    if (step != 0)
    {
        QACTIVE_POST_ISR((QActive *)&AO_Blinky, ENCODER_STEP_SIG, step);
    }
}

static void debouncePushButton(void)
{
    static volatile uint8_t debounceReg = 0x02;
    static volatile uint8_t pressed;
    static volatile uint8_t released;
    static volatile uint16_t pressedCounter;
    static volatile uint16_t releasedCounter;
    static volatile uint8_t clickCount;
    
    
    if (pressed && (pressedCounter != 0xffff)) {
        pressedCounter += pressed;
    }
    
    if (released && (releasedCounter != 0xffff)) {
        releasedCounter += released;
    }

    debounceReg = (debounceReg << 1) + ((BSP_ENCODER_PORT.IN & BSP_ENCODER_PUSH_bm) ? 0 : 1);
    if (debounceReg == 0x7f)
    {
        if (releasedCounter > 100) {
            clickCount = 1;
        }
        pressed = 1;
        released = 0;
        pressedCounter = 0;
        QACTIVE_POST_ISR((QActive *)&AO_Blinky, BUTTON_PRESS_SIG, 0U);
    }
    if (debounceReg == 0x80)
    {
        if (pressedCounter > 100) {
            clickCount = 0;
        }
        released = 1;
        pressed = 0;
        releasedCounter = 0;
        QACTIVE_POST_ISR((QActive *)&AO_Blinky, BUTTON_RELEASE_SIG, 0U);

        if (clickCount > 0) {
            QACTIVE_POST_ISR((QActive *)&AO_Blinky, BUTTON_CLICK_SIG, clickCount);
        }

        clickCount++;
    }

    if (pressedCounter == 256) {
        QACTIVE_POST_ISR((QActive *)&AO_Blinky, BUTTON_LONG_PRESS_SIG, 0U);
    }
    if ((pressedCounter > 256) && ((pressedCounter % 128) == 0)) {
        QACTIVE_POST_ISR((QActive *)&AO_Blinky, BUTTON_LONG_PRESS_REPEAT_SIG, 0U);
    }
}

/*****************************************************************************
 * NOTE01:
 * The QV_onIdle() callback is called with interrupts disabled, because the
 * determination of the idle condition might change by any interrupt posting
 * an event. QV_onIdle() must internally enable interrupts, ideally
 * atomically with putting the CPU to the power-saving mode.
 *
 * NOTE2:
 * The User LED is used to visualize the idle loop activity. The brightness
 * of the LED is proportional to the frequency of invcations of the idle loop.
 * Please note that the LED is toggled with interrupts locked, so no interrupt
 * execution time contributes to the brightness of the User LED.
 */
