#!/bin/bash
#
# This does nothing but generate a sample JSON log at the interval defined by $DELAY. 

LOGFILE=/logs/log.txt
if [ -f $LOGFILE ]; then rm $LOGFILE; fi
touch $LOGFILE;

index=0;
while true; do
  ts=`date +%s`
  let "index++"
  echo "{\"timestamp\":$ts,\"threadId\":1,\"thread\":\"main\",\"level\":\"INFO\",\"loggerName\":\"com.sample.Log\",\"message\":{\"log_number\":$index,\"log_msg\":\"Hello from log $index\"}}" | tee -a $LOGFILE
  sleep 5
done