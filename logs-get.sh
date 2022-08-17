#!/bin/bash

echo "Enter node IP address:"
read NODE

echo "Enter logs directory:"
read LOGSPATH

# download data 
scp pi@$NODE:$LOGSPATH\*.log\* .




