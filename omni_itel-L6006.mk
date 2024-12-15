# Dynamic
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Inherit from itel-L6006 device
$(call inherit-product, device/Itel/itel-L6006/device.mk)

# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our PitchBlack configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := itel-L6006
PRODUCT_NAME := omni_itel-L6006
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel L6006
PRODUCT_MANUFACTURER := ITEL MOBILE LIMITED

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
