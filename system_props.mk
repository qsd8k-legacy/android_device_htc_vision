#
# Property overrides msm7x30
#

# Display
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=240

# System Restrictions
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.strictmode.visual=0 \
	persist.sys.strictmode.disable=1 \
	ro.secure=0

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
	rild.libpath=/system/lib/libhtc_ril.so \
	ro.telephony.ril.v3=signalstrength,datacallapn \
	ro.ril.ecc.HTC-GCC=999,112,997 \
	ro.ril.ecc.HTC-WWE=999 \
	ro.ril.ecc.HTC-ELL=92,93,94 \
	ro.ril.enable.a52.HTC-ITA=1 \
	ro.ril.enable.a53.HTC-ITA=1 \
	ro.ril.enable.a52=0 \
	ro.ril.enable.a53=1 \
	ro.ril.disable.fd.plmn.prefix=23402,23410,23411 \
	ro.ril.enable.sdr=1 \
	ro.ril.enable.amr.wideband=1 \
	ro.ril.enable.dtm=0 \
	ro.ril.gprsclass=12 \
	ro.ril.hsdpa.category=10 \
	ro.ril.hsupa.category=6 \
	ro.ril.hsxpa=2 \
	ro.ril.def.agps.mode=2 \
	ro.ril.disable.power.collapse=1 \
	ro.ril.update.org.acoustic=1

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
	ro.telephony.default_network=0

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0 \
	wifi.supplicant_scan_interval=45

# Mobile Data
PRODUCT_PROPERTY_OVERRIDES += \
	mobiledata.interfaces=gannet0,rmnet0,rmnet1,rmnet2

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

# TCP Buffer Sizes
PRODUCT_PROPERTY_OVERRIDES += \
	net.tcp.buffersize.hsdpa=4094,87380,393216,4096,16384,110208

# USB
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp,adb

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
	ro.ksm.default=1
