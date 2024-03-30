# Inherit from L6006 device
$(call inherit-product, device/itel/L6006/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_minimal.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := L6006
PRODUCT_NAME := twrp_L6006
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel L6006
PRODUCT_MANUFACTURER := ITEL MOBILE LIMITED
PRODUCT_RELEASE_NAME := L6006
