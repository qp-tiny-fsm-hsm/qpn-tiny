/* 
 * File:   signals.h
 * Author: josef
 *
 * Created on June 1, 2025, 10:09 AM
 */

#ifndef SIGNALS_H
#define	SIGNALS_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "qepn.h"    
    
enum Signals {
    DUMMY_SIG = Q_USER_SIG,
    MAX_PUB_SIG,            // the last published signal

    TIMEOUT_SIG,            // Timeout

    BUTTON_PRESS_SIG,       // Rotary encoder button press
    BUTTON_RELEASE_SIG,     // Rotary encoder button release
    BUTTON_CLICK_SIG,
    BUTTON_LONG_PRESS_SIG,
    BUTTON_LONG_PRESS_REPEAT_SIG,

    ENCODER_STEP_SIG,       // Rotary encoder step
    ONESECOND_SIG,          // One second tick
    BEEP_FINISHED_SIG,      // Beep signal finished
    MAX_SIG                 // the last signal
};



#ifdef	__cplusplus
}
#endif

#endif	/* SIGNALS_H */

