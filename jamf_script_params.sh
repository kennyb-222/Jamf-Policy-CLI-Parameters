#!/bin/bash
# Get parameters supplied from a jamf policy

checkCustomParamaters(){
# Get the parent process command and PID
parentPid=$(ps -o ppid= -p "$PPID")
parentCmd=$(ps -p ${parentPid} -o command | tail -1)

# Fetch all the parameters
# P1 Value
if [[ -n $(echo ${parentCmd} | grep '\-p1') ]]; then
    p1Value=$(echo ${parentCmd} | awk -F"-p1 " '{print $2}' | awk -F"-p[0-9] " '{print $1}')
    echo "P1 value is ${p1Value}"
fi

# P2 Value
if [[ -n $(echo ${parentCmd} | grep '\-p2') ]]; then
    p2Value=$(echo ${parentCmd} | awk -F"-p2 " '{print $2}' | awk -F"-p[0-9] " '{print $1}')
    echo "P2 value is ${p2Value}"
fi

# P3 Value
if [[ -n $(echo ${parentCmd} | grep '\-p3') ]]; then
    p3Value=$(echo ${parentCmd} | awk -F"-p3 " '{print $2}' | awk -F"-p[0-9] " '{print $1}')
    echo "P3 value is ${p3Value}"
fi

# P4 Value
if [[ -n $(echo ${parentCmd} | grep '\-p4') ]]; then
    p4Value=$(echo ${parentCmd} | awk -F"-p4 " '{print $2}' | awk -F"-p[0-9] " '{print $1}')
    echo "P4 value is ${p4Value}"
fi

# P5 Value
if [[ -n $(echo ${parentCmd} | grep '\-p5') ]]; then
    p5Value=$(echo ${parentCmd} | awk -F"-p5 " '{print $2}' | awk -F"-p[0-9] " '{print $1}')
    echo "P5 value is ${p5Value}"
fi

# P6 Value
if [[ -n $(echo ${parentCmd} | grep '\-p6') ]]; then
    p6Value=$(echo ${parentCmd} | awk -F"-p6 " '{print $2}' | awk -F"-p[0-9] " '{print $1}')
    echo "P6 value is ${p2Value}"
fi

# P7 Value
if [[ -n $(echo ${parentCmd} | grep '\-p7') ]]; then
    p7Value=$(echo ${parentCmd} | awk -F"-p7 " '{print $2}' | awk -F"-p[0-9] " '{print $1}')
    echo "P7 value is ${p7Value}"
fi

# P8 Value
if [[ -n $(echo ${parentCmd} | grep '\-p8') ]]; then
    p8Value=$(echo ${parentCmd} | awk -F"-p8 " '{print $2}' | awk -F"-p[0-9] " '{print $1}')
    echo "P8 value is ${p8Value}"
fi

# P9 Value
if [[ -n $(echo ${parentCmd} | grep '\-p9') ]]; then
    p9Value=$(echo ${parentCmd} | awk -F"-p9 " '{print $2}' | awk -F"-p[0-9] " '{print $1}')
    echo "P9 value is ${p9Value}"
fi
}

checkCustomParamaters

exit 0
