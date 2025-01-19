# Release name
PRODUCT_RELEASE_NAME := Vision

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit some common CM stuff.
$(call inherit-product, vendor/unlegacy/configs/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/htc/vision/device_vision.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_vision BUILD_FINGERPRINT=htc_wwe/htc_vision/vision:4.4.4/KTU84P/1227136:user/release-keys PRIVATE_BUILD_DESC="vision-user 4.4.4 KTU84P 1227136 release-keys"

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := vision
PRODUCT_NAME := aosp_vision
PRODUCT_BRAND := htc
PRODUCT_MODEL := Htc Desire Z
PRODUCT_MANUFACTURER := HTC
