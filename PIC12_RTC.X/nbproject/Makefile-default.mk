#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
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
OUTPUT_SUFFIX=cof
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC12_RTC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC12_RTC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.obj
POSSIBLE_DEPFILES=${OBJECTDIR}/main.obj.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.obj


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PIC12_RTC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24HJ128GP502
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.obj: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	${MP_CC} -C main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR} -N31 --runtime=default,+clear,+heap,+init,-keep,+clib --opt=all,-asm,-debug,9 --summary=default,-psect,+mem,-hex --warn=0  -D__DEBUG --debugger=realice  -Bsmall   -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep -C main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR} -N31 --runtime=default,+clear,+heap,+init,-keep,+clib --opt=all,-asm,-debug,9 --warn=0  -D__DEBUG --debugger=realice  -Bsmall   -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/main.obj: > ${OBJECTDIR}/main.obj.d
	@cat ${OBJECTDIR}/main.dep >> ${OBJECTDIR}/main.obj.d
	@${FIXDEPS} "${OBJECTDIR}/main.obj.d" $(SILENT) -ht
	
else
${OBJECTDIR}/main.obj: main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR} 
	${MP_CC} -C main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR} -N31 --runtime=default,+clear,+heap,+init,-keep,+clib --opt=all,-asm,-debug,9 --summary=default,-psect,+mem,-hex --warn=0   -Bsmall   -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@${MP_CC} --scandep -C main.c $(MP_EXTRA_CC_PRE) -q --chip=$(MP_PROCESSOR_OPTION) -P  --outdir=${OBJECTDIR} -N31 --runtime=default,+clear,+heap,+init,-keep,+clib --opt=all,-asm,-debug,9 --warn=0   -Bsmall   -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s"
	@echo ${OBJECTDIR}/main.obj: > ${OBJECTDIR}/main.obj.d
	@cat ${OBJECTDIR}/main.dep >> ${OBJECTDIR}/main.obj.d
	@${FIXDEPS} "${OBJECTDIR}/main.obj.d" $(SILENT) -ht
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC12_RTC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/PIC12_RTC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/PIC12_RTC.X.${IMAGE_TYPE}.map  --outdir=${OBJECTDIR} --summary=default,-psect,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+heap,+init,-keep,+clib --opt=all,-asm,-debug,9 -D__DEBUG --debugger=realice -N31 --warn=0  -Bsmall     -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s" ${OBJECTFILES_QUOTED_IF_SPACED}  
	${RM} dist/${CND_CONF}/${IMAGE_TYPE}/PIC12_RTC.X.${IMAGE_TYPE}.hex
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC12_RTC.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE) -odist/${CND_CONF}/${IMAGE_TYPE}/PIC12_RTC.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -mdist/${CND_CONF}/${IMAGE_TYPE}/PIC12_RTC.X.${IMAGE_TYPE}.map  --outdir=${OBJECTDIR} --summary=default,-psect,+mem,-hex --chip=$(MP_PROCESSOR_OPTION) -P --runtime=default,+clear,+heap,+init,-keep,+clib --opt=all,-asm,-debug,9 -N31 --warn=0  -Bsmall     -g --asmlist "--errformat=%f:%l: error: %s" "--msgformat=%f:%l: advisory: %s" "--warnformat=%f:%l warning: %s" ${OBJECTFILES_QUOTED_IF_SPACED}  
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

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
