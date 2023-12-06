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
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Parcial_correccion_.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Parcial_correccion_.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=delay.asm interrup_TMR.asm interrup_periferico.asm interrupciones.asm setup.asm timer_18F45K20TEMP.ASM

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/delay.o ${OBJECTDIR}/interrup_TMR.o ${OBJECTDIR}/interrup_periferico.o ${OBJECTDIR}/interrupciones.o ${OBJECTDIR}/setup.o ${OBJECTDIR}/timer_18F45K20TEMP.o
POSSIBLE_DEPFILES=${OBJECTDIR}/delay.o.d ${OBJECTDIR}/interrup_TMR.o.d ${OBJECTDIR}/interrup_periferico.o.d ${OBJECTDIR}/interrupciones.o.d ${OBJECTDIR}/setup.o.d ${OBJECTDIR}/timer_18F45K20TEMP.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/delay.o ${OBJECTDIR}/interrup_TMR.o ${OBJECTDIR}/interrup_periferico.o ${OBJECTDIR}/interrupciones.o ${OBJECTDIR}/setup.o ${OBJECTDIR}/timer_18F45K20TEMP.o

# Source Files
SOURCEFILES=delay.asm interrup_TMR.asm interrup_periferico.asm interrupciones.asm setup.asm timer_18F45K20TEMP.ASM



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Parcial_correccion_.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18f45k20
MP_LINKER_DEBUG_OPTION= 
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/delay.o: delay.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/delay.o.d 
	@${RM} ${OBJECTDIR}/delay.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/delay.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/delay.lst\" -e\"${OBJECTDIR}/delay.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/delay.o\" \"delay.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/delay.o"
	@${FIXDEPS} "${OBJECTDIR}/delay.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/interrup_TMR.o: interrup_TMR.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrup_TMR.o.d 
	@${RM} ${OBJECTDIR}/interrup_TMR.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/interrup_TMR.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/interrup_TMR.lst\" -e\"${OBJECTDIR}/interrup_TMR.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/interrup_TMR.o\" \"interrup_TMR.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/interrup_TMR.o"
	@${FIXDEPS} "${OBJECTDIR}/interrup_TMR.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/interrup_periferico.o: interrup_periferico.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrup_periferico.o.d 
	@${RM} ${OBJECTDIR}/interrup_periferico.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/interrup_periferico.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/interrup_periferico.lst\" -e\"${OBJECTDIR}/interrup_periferico.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/interrup_periferico.o\" \"interrup_periferico.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/interrup_periferico.o"
	@${FIXDEPS} "${OBJECTDIR}/interrup_periferico.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/interrupciones.o: interrupciones.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrupciones.o.d 
	@${RM} ${OBJECTDIR}/interrupciones.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/interrupciones.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/interrupciones.lst\" -e\"${OBJECTDIR}/interrupciones.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/interrupciones.o\" \"interrupciones.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/interrupciones.o"
	@${FIXDEPS} "${OBJECTDIR}/interrupciones.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/setup.o: setup.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setup.o.d 
	@${RM} ${OBJECTDIR}/setup.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/setup.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/setup.lst\" -e\"${OBJECTDIR}/setup.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/setup.o\" \"setup.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/setup.o"
	@${FIXDEPS} "${OBJECTDIR}/setup.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/timer_18F45K20TEMP.o: timer_18F45K20TEMP.ASM  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timer_18F45K20TEMP.o.d 
	@${RM} ${OBJECTDIR}/timer_18F45K20TEMP.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/timer_18F45K20TEMP.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -d__DEBUG -d__MPLAB_DEBUGGER_SIMULATOR=1 -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/timer_18F45K20TEMP.lst\" -e\"${OBJECTDIR}/timer_18F45K20TEMP.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/timer_18F45K20TEMP.o\" \"timer_18F45K20TEMP.ASM\" 
	@${DEP_GEN} -d "${OBJECTDIR}/timer_18F45K20TEMP.o"
	@${FIXDEPS} "${OBJECTDIR}/timer_18F45K20TEMP.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
else
${OBJECTDIR}/delay.o: delay.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/delay.o.d 
	@${RM} ${OBJECTDIR}/delay.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/delay.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/delay.lst\" -e\"${OBJECTDIR}/delay.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/delay.o\" \"delay.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/delay.o"
	@${FIXDEPS} "${OBJECTDIR}/delay.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/interrup_TMR.o: interrup_TMR.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrup_TMR.o.d 
	@${RM} ${OBJECTDIR}/interrup_TMR.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/interrup_TMR.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/interrup_TMR.lst\" -e\"${OBJECTDIR}/interrup_TMR.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/interrup_TMR.o\" \"interrup_TMR.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/interrup_TMR.o"
	@${FIXDEPS} "${OBJECTDIR}/interrup_TMR.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/interrup_periferico.o: interrup_periferico.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrup_periferico.o.d 
	@${RM} ${OBJECTDIR}/interrup_periferico.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/interrup_periferico.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/interrup_periferico.lst\" -e\"${OBJECTDIR}/interrup_periferico.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/interrup_periferico.o\" \"interrup_periferico.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/interrup_periferico.o"
	@${FIXDEPS} "${OBJECTDIR}/interrup_periferico.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/interrupciones.o: interrupciones.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/interrupciones.o.d 
	@${RM} ${OBJECTDIR}/interrupciones.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/interrupciones.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/interrupciones.lst\" -e\"${OBJECTDIR}/interrupciones.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/interrupciones.o\" \"interrupciones.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/interrupciones.o"
	@${FIXDEPS} "${OBJECTDIR}/interrupciones.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/setup.o: setup.asm  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/setup.o.d 
	@${RM} ${OBJECTDIR}/setup.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/setup.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/setup.lst\" -e\"${OBJECTDIR}/setup.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/setup.o\" \"setup.asm\" 
	@${DEP_GEN} -d "${OBJECTDIR}/setup.o"
	@${FIXDEPS} "${OBJECTDIR}/setup.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
${OBJECTDIR}/timer_18F45K20TEMP.o: timer_18F45K20TEMP.ASM  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timer_18F45K20TEMP.o.d 
	@${RM} ${OBJECTDIR}/timer_18F45K20TEMP.o 
	@${FIXDEPS} dummy.d -e "${OBJECTDIR}/timer_18F45K20TEMP.err" $(SILENT) -c ${MP_AS} $(MP_EXTRA_AS_PRE) -q -p$(MP_PROCESSOR_OPTION)  -l\"${OBJECTDIR}/timer_18F45K20TEMP.lst\" -e\"${OBJECTDIR}/timer_18F45K20TEMP.err\" $(ASM_OPTIONS)    -o\"${OBJECTDIR}/timer_18F45K20TEMP.o\" \"timer_18F45K20TEMP.ASM\" 
	@${DEP_GEN} -d "${OBJECTDIR}/timer_18F45K20TEMP.o"
	@${FIXDEPS} "${OBJECTDIR}/timer_18F45K20TEMP.o.d" $(SILENT) -rsi ${MP_AS_DIR} -c18 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Parcial_correccion_.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION)  -w -x -u_DEBUG -z__ICD2RAM=1 -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"   -z__MPLAB_BUILD=1  -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_SIMULATOR=1 $(MP_LINKER_DEBUG_OPTION) -odist/${CND_CONF}/${IMAGE_TYPE}/Parcial_correccion_.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
else
dist/${CND_CONF}/${IMAGE_TYPE}/Parcial_correccion_.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION)  -w  -m"${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map"   -z__MPLAB_BUILD=1  -odist/${CND_CONF}/${IMAGE_TYPE}/Parcial_correccion_.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
