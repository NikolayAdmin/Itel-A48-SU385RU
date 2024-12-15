# Inherit from itel-L6006 device
$(call inherit-product, device/Itel/itel-L6006/device.mk)

# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our PitchBlack configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := itel-L6006
PRODUCT_NAME := twrp_itel-L6006
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel L6006
PRODUCT_MANUFACTURER := ITEL MOBILE LIMITED
