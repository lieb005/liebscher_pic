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
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18_JTAG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=cof
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/PIC18_JTAG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/759574814/bitreverse.o ${OBJECTDIR}/_ext/759574814/emu_ft245_eepromv2.o ${OBJECTDIR}/_ext/759574814/main6.o ${OBJECTDIR}/_ext/759574814/usb_descriptors.o ${OBJECTDIR}/_ext/759574814/usb_device.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/759574814/bitreverse.o.d ${OBJECTDIR}/_ext/759574814/emu_ft245_eepromv2.o.d ${OBJECTDIR}/_ext/759574814/main6.o.d ${OBJECTDIR}/_ext/759574814/usb_descriptors.o.d ${OBJECTDIR}/_ext/759574814/usb_device.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/759574814/bitreverse.o ${OBJECTDIR}/_ext/759574814/emu_ft245_eepromv2.o ${OBJECTDIR}/_ext/759574814/main6.o ${OBJECTDIR}/_ext/759574814/usb_descriptors.o ${OBJECTDIR}/_ext/759574814/usb_device.o


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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/PIC18_JTAG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F2550
MP_PROCESSOR_OPTION_LD=18f2550
MP_LINKER_DEBUG_OPTION= -u_DEBUGCODESTART=0x7dc0 -u_DEBUGCODELEN=0x240 -u_DEBUGDATASTART=0x3f4 -u_DEBUGDATALEN=0xb
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/759574814/bitreverse.o: ../../Downloads/PIC/USB-Blaster6/build/bitreverse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/759574814 
	@${RM} ${OBJECTDIR}/_ext/759574814/bitreverse.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/759574814/bitreverse.o   ../../Downloads/PIC/USB-Blaster6/build/bitreverse.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/759574814/bitreverse.o 
	
${OBJECTDIR}/_ext/759574814/emu_ft245_eepromv2.o: ../../Downloads/PIC/USB-Blaster6/build/emu_ft245_eepromv2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/759574814 
	@${RM} ${OBJECTDIR}/_ext/759574814/emu_ft245_eepromv2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/759574814/emu_ft245_eepromv2.o   ../../Downloads/PIC/USB-Blaster6/build/emu_ft245_eepromv2.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/759574814/emu_ft245_eepromv2.o 
	
${OBJECTDIR}/_ext/759574814/main6.o: ../../Downloads/PIC/USB-Blaster6/build/main6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/759574814 
	@${RM} ${OBJECTDIR}/_ext/759574814/main6.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/759574814/main6.o   ../../Downloads/PIC/USB-Blaster6/build/main6.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/759574814/main6.o 
	
${OBJECTDIR}/_ext/759574814/usb_descriptors.o: ../../Downloads/PIC/USB-Blaster6/build/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/759574814 
	@${RM} ${OBJECTDIR}/_ext/759574814/usb_descriptors.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/759574814/usb_descriptors.o   ../../Downloads/PIC/USB-Blaster6/build/usb_descriptors.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/759574814/usb_descriptors.o 
	
${OBJECTDIR}/_ext/759574814/usb_device.o: ../../Downloads/PIC/USB-Blaster6/build/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/759574814 
	@${RM} ${OBJECTDIR}/_ext/759574814/usb_device.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -D__DEBUG -D__MPLAB_DEBUGGER_PICKIT2=1 -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/759574814/usb_device.o   ../../Downloads/PIC/USB-Blaster6/build/usb_device.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/759574814/usb_device.o 
	
else
${OBJECTDIR}/_ext/759574814/bitreverse.o: ../../Downloads/PIC/USB-Blaster6/build/bitreverse.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/759574814 
	@${RM} ${OBJECTDIR}/_ext/759574814/bitreverse.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/759574814/bitreverse.o   ../../Downloads/PIC/USB-Blaster6/build/bitreverse.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/759574814/bitreverse.o 
	
${OBJECTDIR}/_ext/759574814/emu_ft245_eepromv2.o: ../../Downloads/PIC/USB-Blaster6/build/emu_ft245_eepromv2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/759574814 
	@${RM} ${OBJECTDIR}/_ext/759574814/emu_ft245_eepromv2.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/759574814/emu_ft245_eepromv2.o   ../../Downloads/PIC/USB-Blaster6/build/emu_ft245_eepromv2.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/759574814/emu_ft245_eepromv2.o 
	
${OBJECTDIR}/_ext/759574814/main6.o: ../../Downloads/PIC/USB-Blaster6/build/main6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/759574814 
	@${RM} ${OBJECTDIR}/_ext/759574814/main6.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/759574814/main6.o   ../../Downloads/PIC/USB-Blaster6/build/main6.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/759574814/main6.o 
	
${OBJECTDIR}/_ext/759574814/usb_descriptors.o: ../../Downloads/PIC/USB-Blaster6/build/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/759574814 
	@${RM} ${OBJECTDIR}/_ext/759574814/usb_descriptors.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/759574814/usb_descriptors.o   ../../Downloads/PIC/USB-Blaster6/build/usb_descriptors.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/759574814/usb_descriptors.o 
	
${OBJECTDIR}/_ext/759574814/usb_device.o: ../../Downloads/PIC/USB-Blaster6/build/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/759574814 
	@${RM} ${OBJECTDIR}/_ext/759574814/usb_device.o.d 
	${MP_CC} $(MP_EXTRA_CC_PRE) -p$(MP_PROCESSOR_OPTION)   -I ${MP_CC_DIR}/../h  -fo ${OBJECTDIR}/_ext/759574814/usb_device.o   ../../Downloads/PIC/USB-Blaster6/build/usb_device.c 
	@${DEP_GEN} -d ${OBJECTDIR}/_ext/759574814/usb_device.o 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/PIC18_JTAG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w -x -u_DEBUG   -z__MPLAB_BUILD=1  -u_CRUNTIME -z__MPLAB_DEBUG=1 -z__MPLAB_DEBUGGER_PICKIT2=1 $(MP_LINKER_DEBUG_OPTION) -l ${MP_CC_DIR}/../lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC18_JTAG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
else
dist/${CND_CONF}/${IMAGE_TYPE}/PIC18_JTAG.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_LD} $(MP_EXTRA_LD_PRE)   -p$(MP_PROCESSOR_OPTION_LD)  -w    -z__MPLAB_BUILD=1  -u_CRUNTIME -l ${MP_CC_DIR}/../lib  -o dist/${CND_CONF}/${IMAGE_TYPE}/PIC18_JTAG.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}   
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
