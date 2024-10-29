# Inherit from L6006 device
$(call inherit-product, device/Itel/SU385RU/device.mk)

# Inherit from those products. Most specific first
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common TWRP stuff
$(call inherit-product, vendor/twrp/config/common.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := SU385RU
PRODUCT_NAME := SU385RU
PRODUCT_BRAND := Itel
PRODUCT_MODEL := itel L6006
PRODUCT_MANUFACTURER := ITEL MOBILE LIMITED
PRODUCT_RELEASE_NAME := SU385RU
