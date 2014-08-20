$(call inherit-product, device/htc/vision/full_vision.mk)

# Inherit CM common GSM stuff.
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vision BUILD_FINGERPRINT=htc_wwe/htc_vision/vision:4.4.4/KTU84P/1227136:user/release-keys PRIVATE_BUILD_DESC="vision-user 4.4.4 KTU84P 1227136 release-keys"

PRODUCT_NAME := cm_vision
PRODUCT_DEVICE := vision
