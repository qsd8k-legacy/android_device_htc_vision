#
# Copyright (C) 2011 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# Inherit device configuration
$(call inherit-product, device/htc/vision/system_props.mk)
#Andromadus Vendor include

PRODUCT_COPY_FILES += \
    device/htc/vision/ramdisk/init.vision.rc:root/init.vision.rc \
    device/htc/vision/ramdisk/init.htc7x30.usb.rc:root/init.htc7x30.usb.rc \
    device/htc/vision/ramdisk/ueventd.vision.rc:root/ueventd.vision.rc \
    device/htc/vision/rootdir/fstab.msm7x30:recovery/root/fstab.msm7x30 \
    device/htc/vision/rootdir/fstab.msm7x30:root/fstab.msm7x30 \
    device/htc/vision/rootdir/fstab.msm7x30:root/fstab.vision


#TWRP
# PRODUCT_COPY_FILES += \
#     device/htc/vision/recovery/root/sbin/htcbatt:recovery/root/sbin/htcbatt \
#     device/htc/vision/recovery/root/sbin/choice_fn:recovery/root/sbin/choice_fn \
#     device/htc/vision/recovery/root/sbin/detect_key:recovery/root/sbin/detect_key \
#     device/htc/vision/recovery/root/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
#     device/htc/vision/recovery/root/sbin/power_test:recovery/root/sbin/power_test \
#     device/htc/vision/recovery/root/init.recovery.vision.rc:recovery/root/init.recovery.vision.rc

PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb

# Override /proc/sys/vm/dirty_ratio on UMS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vold.umsdirtyratio=20

DEVICE_PACKAGE_OVERLAYS += device/htc/vision/overlay

# Sensors & Lights
PRODUCT_PACKAGES += \
    lights.vision \
    sensors.vision \
    VisionKeypad

# media configs
PRODUCT_COPY_FILES += \
    device/htc/vision/rootdir/system/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/htc/vision/rootdir/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/htc/vision/rootdir/system/etc/audio_policy.conf:system/etc/audio_policy.conf

# Camera
PRODUCT_COPY_FILES += \
    device/htc/vision/prebuilt/libsurfaceflinger_client.so:system/lib/libsurfaceflinger_client.so

PRODUCT_PACKAGES += \
    camera.msm7x30

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm7x30 \
    audio.usb.default \
    libaudioutils \
    libtinyalsa \
    audio.primary.msm7x30

# Video
PRODUCT_PACKAGES += \
    copybit.msm7x30 \
    gralloc.msm7x30 \
    hwcomposer.msm7x30 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer \
    libdashplayer \
    libstlport

#wireless
PRODUCT_PACKAGES += \
    libnetcmdiface

# Power HAL & GPS
PRODUCT_PACKAGES += \
    power.msm7x30 \

# Media
PRODUCT_PACKAGES += \
    libOmxCore \
    libOmxVenc \
    libmm-omxcore \
    libdivxdrmdecrypt \
    libOmxVdec \
    libstagefrighthw

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml

# Input device calibration files
PRODUCT_COPY_FILES += \
    device/htc/vision/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc \
    device/htc/vision/idc/curcial-oj.idc:system/usr/idc/curcial-oj.idc

# Keylayouts
PRODUCT_COPY_FILES += \
    device/htc/vision/keylayout/vision-keypad-ara.kl:system/usr/keylayout/vision-keypad-ara.kl \
    device/htc/vision/keylayout/vision-keypad-ell.kl:system/usr/keylayout/vision-keypad-ell.kl \
    device/htc/vision/keylayout/vision-keypad-esn.kl:system/usr/keylayout/vision-keypad-esn.kl \
    device/htc/vision/keylayout/vision-keypad-fra.kl:system/usr/keylayout/vision-keypad-fra.kl \
    device/htc/vision/keylayout/vision-keypad-ger.kl:system/usr/keylayout/vision-keypad-ger.kl \
    device/htc/vision/keylayout/vision-keypad-hk.kl:system/usr/keylayout/vision-keypad-hk.kl \
    device/htc/vision/keylayout/vision-keypad-ita.kl:system/usr/keylayout/vision-keypad-ita.kl \
    device/htc/vision/keylayout/vision-keypad.kl:system/usr/keylayout/vision-keypad.kl \
    device/htc/vision/keylayout/vision-keypad-nor.kl:system/usr/keylayout/vision-keypad-nor.kl \
    device/htc/vision/keylayout/vision-keypad-rus.kl:system/usr/keylayout/vision-keypad-rus.kl \
    device/htc/vision/keylayout/vision-keypad-sea.kl:system/usr/keylayout/vision-keypad-sea.kl \
    device/htc/vision/keylayout/vision-keypad-tur.kl:system/usr/keylayout/vision-keypad-tur.kl \
    device/htc/vision/keylayout/vision-keypad-wwe.kl:system/usr/keylayout/vision-keypad-wwe.kl \
    device/htc/vision/keylayout/atmel-touchscreen.kl:system/usr/keylayout/atmel-touchscreen.kl \
    device/htc/vision/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl

# Keymaps
PRODUCT_COPY_FILES += \
    device/htc/vision/keychars/vision-keypad-ara.kcm:system/usr/keychars/vision-keypad-ara.kcm \
    device/htc/vision/keychars/vision-keypad-ell.kcm:system/usr/keychars/vision-keypad-ell.kcm \
    device/htc/vision/keychars/vision-keypad-esn.kcm:system/usr/keychars/vision-keypad-esn.kcm \
    device/htc/vision/keychars/vision-keypad-fra.kcm:system/usr/keychars/vision-keypad-fra.kcm \
    device/htc/vision/keychars/vision-keypad-ger.kcm:system/usr/keychars/vision-keypad-ger.kcm \
    device/htc/vision/keychars/vision-keypad-hk.kcm:system/usr/keychars/vision-keypad-hk.kcm \
    device/htc/vision/keychars/vision-keypad-ita.kcm:system/usr/keychars/vision-keypad-ita.kcm \
    device/htc/vision/keychars/vision-keypad.kcm:system/usr/keychars/vision-keypad.kcm \
    device/htc/vision/keychars/vision-keypad-nor.kcm:system/usr/keychars/vision-keypad-nor.kcm \
    device/htc/vision/keychars/vision-keypad-rus.kcm:system/usr/keychars/vision-keypad-rus.kcm \
    device/htc/vision/keychars/vision-keypad-sea.kcm:system/usr/keychars/vision-keypad-sea.kcm \
    device/htc/vision/keychars/vision-keypad-tur.kcm:system/usr/keychars/vision-keypad-tur.kcm \
    device/htc/vision/keychars/vision-keypad-wwe.kcm:system/usr/keychars/vision-keypad-wwe.kcm

# DSP
PRODUCT_COPY_FILES += \
    device/htc/vision/dsp/AudioBTID.csv:/system/etc/AudioBTID.csv \
    device/htc/vision/dsp/A1026_CFG.csv:/system/etc/A1026_CFG.csv \
    device/htc/vision/dsp/AdieHWCodec.csv:/system/etc/AdieHWCodec.csv \
    device/htc/vision/dsp/AdieHWCodec_WA.csv:/system/etc/AdieHWCodec_WA.csv


# Device specific firmware
PRODUCT_COPY_FILES += \
    device/htc/vision/firmware/vidc_720p_command_control.fw:system/etc/firmware/vidc_720p_command_control.fw \
    device/htc/vision/firmware/vidc_720p_h263_dec_mc.fw:system/etc/firmware/vidc_720p_h263_dec_mc.fw \
    device/htc/vision/firmware/vidc_720p_h264_dec_mc.fw:system/etc/firmware/vidc_720p_h264_dec_mc.fw \
    device/htc/vision/firmware/vidc_720p_h264_enc_mc.fw:system/etc/firmware/vidc_720p_h264_enc_mc.fw \
    device/htc/vision/firmware/vidc_720p_mp4_dec_mc.fw:system/etc/firmware/vidc_720p_mp4_dec_mc.fw \
    device/htc/vision/firmware/vidc_720p_mp4_enc_mc.fw:system/etc/firmware/vidc_720p_mp4_enc_mc.fw \
    device/htc/vision/firmware/vidc_720p_vc1_dec_mc.fw:system/etc/firmware/vidc_720p_vc1_dec_mc.fw \
    device/htc/vision/firmware/bcm4329.hcd:system/vendor/firmware/bcm4329.hcd \
    device/htc/vision/firmware/default.acdb:system/etc/firmware/default.acdb \
    device/htc/vision/firmware/default_org.acdb:system/etc/firmware/default_org.acdb \
    device/htc/vision/firmware/default_org_WA.acdb:system/etc/firmware/default_org_WA.acdb \
    device/htc/vision/firmware/vidc_720p_mp2_dec_mc.fw:system/etc/firmware/vidc_720p_mp2_dec_mc.fw \
    device/htc/vision/firmware/Vision_SPK.acdb:system/etc/firmware/Vision_SPK.acdb

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# lower the increment
ADDITIONAL_BUILD_PROPERTIES += dalvik.vm.heapgrowthlimit=36m

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PROPERTY_OVERRIDES += \
    debug.composition.type=gpu \
    ro.config.low_ram=true \
    debug.egl.recordable.rgba8888=1

# The gps config appropriate for this device
PRODUCT_COPY_FILES += device/htc/vision/configs/gps.conf:system/etc/gps.conf

# Wifi
PRODUCT_PACKAGES += \
	libnetcmdiface \
	dhcpcd.conf \
	hostapd \
	wpa_supplicant \
	wpa_supplicant.conf

# Copy bcm4329 firmware
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# htc audio settings
PRODUCT_PROPERTY_OVERRIDES += \
      media.a1026.nsForVoiceRec = 0 \
      media.a1026.enableA1026 = 1 \
      htc.audio.alt.enable=0 \
      htc.audio.hac.enable=0

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

ADDITIONAL_BUILD_PROPERTIES += sys.mem.max_hidden_apps=4

$(call inherit-product-if-exists, vendor/htc/vision/vision-vendor.mk)
