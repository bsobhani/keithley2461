TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = keithley2461
# keithley2461.dbd will be created and installed
DBD += keithley2461.dbd

# keithley2461.dbd will be made up from these files:
keithley2461_DBD += base.dbd
keithley2461_DBD += asyn.dbd
keithley2461_DBD += drvAsynIPPort.dbd
keithley2461_DBD += drvAsynSerialPort.dbd
keithley2461_DBD += motorSupport.dbd
keithley2461_DBD += devKeithley2461Motor.dbd
keithley2461_DBD += stream.dbd
# Include dbd files from all support applications:
#keithley2461_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#keithley2461_LIBS += xxx

keithley2461_LIBS += keithley2461Motor motor asyn stream
# keithley2461_registerRecordDeviceDriver.cpp derives from keithley2461.dbd
keithley2461_SRCS += keithley2461_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
keithley2461_SRCS_DEFAULT += keithley2461Main.cpp
keithley2461_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#keithley2461_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
keithley2461_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

