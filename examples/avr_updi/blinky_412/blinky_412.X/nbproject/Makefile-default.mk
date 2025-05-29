#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/blinky_412.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/blinky_412.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../qv/gnu/bsp.c ../main.c ../blinky.c ../../../../src/qfn/qfn.c ../../../../src/qfn/qepn_fsm.c ../../../../src/qvn/qvn.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/865057613/bsp.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/blinky.o ${OBJECTDIR}/_ext/165190898/qfn.o ${OBJECTDIR}/_ext/165190898/qepn_fsm.o ${OBJECTDIR}/_ext/165190402/qvn.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/865057613/bsp.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/blinky.o.d ${OBJECTDIR}/_ext/165190898/qfn.o.d ${OBJECTDIR}/_ext/165190898/qepn_fsm.o.d ${OBJECTDIR}/_ext/165190402/qvn.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/865057613/bsp.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/blinky.o ${OBJECTDIR}/_ext/165190898/qfn.o ${OBJECTDIR}/_ext/165190898/qepn_fsm.o ${OBJECTDIR}/_ext/165190402/qvn.o

# Source Files
SOURCEFILES=../qv/gnu/bsp.c ../main.c ../blinky.c ../../../../src/qfn/qfn.c ../../../../src/qfn/qepn_fsm.c ../../../../src/qvn/qvn.c

# Pack Options 
PACK_COMPILER_OPTIONS=
PACK_COMMON_OPTIONS=



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/blinky_412.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATtiny412
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/865057613/bsp.o: ../qv/gnu/bsp.c  .generated_files/flags/default/87097078da616d78a9cef86887cf5b6bc1320d6b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/865057613" 
	@${RM} ${OBJECTDIR}/_ext/865057613/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/865057613/bsp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/865057613/bsp.o.d" -MT "${OBJECTDIR}/_ext/865057613/bsp.o.d" -MT ${OBJECTDIR}/_ext/865057613/bsp.o  -o ${OBJECTDIR}/_ext/865057613/bsp.o ../qv/gnu/bsp.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  .generated_files/flags/default/a291a5e333e9fd593d06f069915597dc99657166 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1472/main.o.d" -MT "${OBJECTDIR}/_ext/1472/main.o.d" -MT ${OBJECTDIR}/_ext/1472/main.o  -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/blinky.o: ../blinky.c  .generated_files/flags/default/17775a496fef44c71a358588e3356f201bdb380b .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/blinky.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/blinky.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1472/blinky.o.d" -MT "${OBJECTDIR}/_ext/1472/blinky.o.d" -MT ${OBJECTDIR}/_ext/1472/blinky.o  -o ${OBJECTDIR}/_ext/1472/blinky.o ../blinky.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/165190898/qfn.o: ../../../../src/qfn/qfn.c  .generated_files/flags/default/c5dba863c84414b3888c5cead932547190a14d90 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165190898" 
	@${RM} ${OBJECTDIR}/_ext/165190898/qfn.o.d 
	@${RM} ${OBJECTDIR}/_ext/165190898/qfn.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/165190898/qfn.o.d" -MT "${OBJECTDIR}/_ext/165190898/qfn.o.d" -MT ${OBJECTDIR}/_ext/165190898/qfn.o  -o ${OBJECTDIR}/_ext/165190898/qfn.o ../../../../src/qfn/qfn.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/165190898/qepn_fsm.o: ../../../../src/qfn/qepn_fsm.c  .generated_files/flags/default/aa2ae7f26de9b3e4a3235edb98ba96f2d3a8ce4d .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165190898" 
	@${RM} ${OBJECTDIR}/_ext/165190898/qepn_fsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/165190898/qepn_fsm.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/165190898/qepn_fsm.o.d" -MT "${OBJECTDIR}/_ext/165190898/qepn_fsm.o.d" -MT ${OBJECTDIR}/_ext/165190898/qepn_fsm.o  -o ${OBJECTDIR}/_ext/165190898/qepn_fsm.o ../../../../src/qfn/qepn_fsm.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/165190402/qvn.o: ../../../../src/qvn/qvn.c  .generated_files/flags/default/98c637e62321c48fbdd0936dc38a2f93ce7883d1 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165190402" 
	@${RM} ${OBJECTDIR}/_ext/165190402/qvn.o.d 
	@${RM} ${OBJECTDIR}/_ext/165190402/qvn.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS} -g -DDEBUG -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/165190402/qvn.o.d" -MT "${OBJECTDIR}/_ext/165190402/qvn.o.d" -MT ${OBJECTDIR}/_ext/165190402/qvn.o  -o ${OBJECTDIR}/_ext/165190402/qvn.o ../../../../src/qvn/qvn.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
else
${OBJECTDIR}/_ext/865057613/bsp.o: ../qv/gnu/bsp.c  .generated_files/flags/default/efee8ae5a3b9a76d885691ae6d7d2aab1dec5cd3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/865057613" 
	@${RM} ${OBJECTDIR}/_ext/865057613/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/865057613/bsp.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/865057613/bsp.o.d" -MT "${OBJECTDIR}/_ext/865057613/bsp.o.d" -MT ${OBJECTDIR}/_ext/865057613/bsp.o  -o ${OBJECTDIR}/_ext/865057613/bsp.o ../qv/gnu/bsp.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  .generated_files/flags/default/12b3f242886075261395e652bcd8a286c73ad353 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1472/main.o.d" -MT "${OBJECTDIR}/_ext/1472/main.o.d" -MT ${OBJECTDIR}/_ext/1472/main.o  -o ${OBJECTDIR}/_ext/1472/main.o ../main.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/1472/blinky.o: ../blinky.c  .generated_files/flags/default/ebf438b27091adece233fc447c6edd24fb55d433 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/blinky.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/blinky.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/1472/blinky.o.d" -MT "${OBJECTDIR}/_ext/1472/blinky.o.d" -MT ${OBJECTDIR}/_ext/1472/blinky.o  -o ${OBJECTDIR}/_ext/1472/blinky.o ../blinky.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/165190898/qfn.o: ../../../../src/qfn/qfn.c  .generated_files/flags/default/df29b6536f213806c139c8dc1395879007c46712 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165190898" 
	@${RM} ${OBJECTDIR}/_ext/165190898/qfn.o.d 
	@${RM} ${OBJECTDIR}/_ext/165190898/qfn.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/165190898/qfn.o.d" -MT "${OBJECTDIR}/_ext/165190898/qfn.o.d" -MT ${OBJECTDIR}/_ext/165190898/qfn.o  -o ${OBJECTDIR}/_ext/165190898/qfn.o ../../../../src/qfn/qfn.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/165190898/qepn_fsm.o: ../../../../src/qfn/qepn_fsm.c  .generated_files/flags/default/d15ba8655e46def3a657a2a29835bffcb7342d3a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165190898" 
	@${RM} ${OBJECTDIR}/_ext/165190898/qepn_fsm.o.d 
	@${RM} ${OBJECTDIR}/_ext/165190898/qepn_fsm.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/165190898/qepn_fsm.o.d" -MT "${OBJECTDIR}/_ext/165190898/qepn_fsm.o.d" -MT ${OBJECTDIR}/_ext/165190898/qepn_fsm.o  -o ${OBJECTDIR}/_ext/165190898/qepn_fsm.o ../../../../src/qfn/qepn_fsm.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
${OBJECTDIR}/_ext/165190402/qvn.o: ../../../../src/qvn/qvn.c  .generated_files/flags/default/3431e32e002eca91278878acaf53e9947fe7ccdd .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}/_ext/165190402" 
	@${RM} ${OBJECTDIR}/_ext/165190402/qvn.o.d 
	@${RM} ${OBJECTDIR}/_ext/165190402/qvn.o 
	 ${MP_CC}  $(MP_EXTRA_CC_PRE) -mmcu=attiny412 ${PACK_COMPILER_OPTIONS} ${PACK_COMMON_OPTIONS}  -x c -c -D__$(MP_PROCESSOR_OPTION)__  -I"../../../../include" -I"../" -I"../../../../ports/avr_updi/qv/gnu" -funsigned-char -funsigned-bitfields -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -Wall -MD -MP -MF "${OBJECTDIR}/_ext/165190402/qvn.o.d" -MT "${OBJECTDIR}/_ext/165190402/qvn.o.d" -MT ${OBJECTDIR}/_ext/165190402/qvn.o  -o ${OBJECTDIR}/_ext/165190402/qvn.o ../../../../src/qvn/qvn.c  -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD) 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/blinky_412.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny412 ${PACK_COMMON_OPTIONS}  -D__MPLAB_DEBUGGER_SIMULATOR=1 -gdwarf-2 -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}/blinky_412.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/blinky_412.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_SIMULATOR=1 -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	
	
	${MP_CC_DIR}/avr-objdump -h -S "${DISTDIR}/blinky_412.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" > "${DISTDIR}/blinky_412.X.${IMAGE_TYPE}.lss"
	
	
	
else
${DISTDIR}/blinky_412.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mmcu=attiny412 ${PACK_COMMON_OPTIONS}  -D__$(MP_PROCESSOR_OPTION)__  -Wl,-Map="${DISTDIR}/blinky_412.X.${IMAGE_TYPE}.map"    -o ${DISTDIR}/blinky_412.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}      -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION) -Wl,--gc-sections -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}/avr-objcopy -O ihex "${DISTDIR}/blinky_412.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/blinky_412.X.${IMAGE_TYPE}.hex"
	
	${MP_CC_DIR}/avr-objdump -h -S "${DISTDIR}/blinky_412.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" > "${DISTDIR}/blinky_412.X.${IMAGE_TYPE}.lss"
	
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
