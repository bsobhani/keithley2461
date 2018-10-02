#!../../bin/linux-x86_64/keithley2461

## You may have to change keithley2461 to something else
## everywhere it appears in this file

#< envPaths
## Load record instances

## Register all support components
dbLoadDatabase("../../dbd/keithley2461.dbd",0,0)
keithley2461_registerRecordDeviceDriver(pdbbase) 

drvAsynIPPortConfigure("P0", "192.168.1.107:5025")
#keithley2461CreateController("motor","P0",2,.5,.5)
#keithley2461CreateAxis("motor",0,0,"voltage")
#keithley2461CreateAxis("motor",1,1,"current")

epicsEnvSet ("STREAM_PROTOCOL_PATH", ".:../protocols")

#dbLoadRecords("../../db/keithley2461.db","user=alex")
#dbLoadRecords("../../db/test.db","user=alex")
#dbLoadTemplate("../../db/motor.substitutions")
dbLoadTemplate("../../db/misc.substitutions")

iocInit()

## Start any sequence programs
#seq snckeithley2461,"user=alex"
