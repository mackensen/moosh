#!/bin/bash 
source functions.sh

install_db
install_data
cd $MOODLEDIR

if moosh sql-dump | grep "Dump completed"; then
  exit 0
else
  exit 1
fi
