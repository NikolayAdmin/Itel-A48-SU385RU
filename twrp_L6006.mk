#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from L6006 device
$(call inherit-product, device/itel/L6006/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)


# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := L6006
PRODUCT_NAME := twrp_L6006
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel L6006
PRODUCT_MANUFACTURER := ITEL MOBILE LIMITED
PRODUCT_RELEASE_NAME := L6006


PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="BQru-5745L user 10 QP1A.190711.020 48516 release-keys"

##    TARGET_DEVICE=L6006 \
##    PRODUCT_NAME=L6006 \

BUILD_FINGERPRINT := Itel/SU385RU/itel-L6006:10/QP1A.190711.020/RU-V021-20230214:user/release-keys
