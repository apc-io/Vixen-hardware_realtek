#!/bin/bash

if [ ! -d $BSP_LOCAL_PATH ]; then
    echo "Can not find BSP_LOCAL_PATH:$BSP_LOCAL_PATH folder.Abort!"
    return 1
fi


cp $PRODUCT_OUT/obj/STATIC_LIBRARIES/lib_driver_cmd_rtl_intermediates/lib_driver_cmd_rtl.a $BSP_LOCAL_PATH
cp $PRODUCT_OUT/system/etc/dhcpcd/dhcpcd.conf $BSP_LOCAL_PATH
cp $PRODUCT_OUT/system/etc/wifi/wpa_supplicant.conf $BSP_LOCAL_PATH

cp $PRODUCT_OUT/obj/STATIC_LIBRARIES/lib_driver_cmd_rtl_intermediates/export_includes $BSP_LOCAL_PATH

#mkdir -p $BSP_LOCAL_PATH/wlan/libhardware_legacy/wifi/
#cp $LOCAL_PATH/wlan/libhardware_legacy/wifi/wifi_realtek.c $BSP_LOCAL_PATH/wlan/libhardware_legacy/wifi/

cp $LOCAL_PATH/Android.mk.bsp $BSP_LOCAL_PATH/Android.mk
