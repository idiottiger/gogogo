#!/bin/sh

APK_PATH=$1


#result like follow
#52F0116103001042       device usb:338690048X product:NEM-UL10 model:NEM_UL10 device:HNNEM-H transport_id:1
#WTKDU16828013010       device usb:336592896X product:FRD-AL00 model:FRD_AL00 device:HWFRD transport_id:2
CMD_DEVICE_LIST="adb devices -l"

CMD_INS_APK="adb -s %s install -r %s"
CMD_UNI_APK="adb -s %s uninstall %s"
CMD_CLEAR_APP_DATA="adb -s shell pm clear %s"
CMD_RUN_CMD="adb -s %s"

runCommand(){
    device_id_list=$1
    cmd=$2
    
}


mkdir -p ~/Temp/
OUT=~/Temp/out_temp

rm -rf $OUT
eval "$CMD_DEVICE_LIST" > $OUT

DEVICE_NAME_LIST=`awk '/product:/ {print $4}' $OUT`
DEVICE_ID_LIST=`awk '/product:/ {print $1}' $OUT`

LENGTH=0
for NAME in $DEVICE_NAME_LIST
do
    LENGTH=$(($LENGTH+1))
done



if [ $LENGTH = 0 ]; then
    echo "No Android Device Found ..."
elif [ $LENGTH = 1 ]; then
    echo "=============== RUN COMMAND ==============="
else
    echo "Choose The Device INDEX Run The Command: "
    echo "------------------------------------------------------"
    index=0
    echo "[-1] For All Devices"
    
    for NAME in $DEVICE_NAME_LIST
    do
        echo "[$index] $NAME"
        index=$(($index+1))
    done    

    read CHOOSE_INDEX
    IFS=" " read -r -a ID_LIST <<< $DEVICE_ID_LIST
    echo $ID_LIST

    if [ $(($CHOOSE_INDEX)) -eq -1 ]; then
        echo "choose -1"
        runCommand $ID_LIST 
    elif [ $(($CHOOSE_INDEX)) -lt $LENGTH ]; then
        echo "CHOOSE_INDEX $CHOOSE_INDEX"
        runCommand $ID_LIST[$(($CHOOSE_INDEX))]
    else
        echo "Error: Param Error"
    fi
fi