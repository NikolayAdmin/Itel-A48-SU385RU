# API
PRODUCT_SHIPPING_API_LEVEL := 29

# Device path
LOCAL_PATH := device/Itel/itel-L6006

# Dynamic Partitions stuff
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery \
    fastbootd

# Health Hal
PRODUCT_PACKAGES += \
    android.hardware.health@2.0-impl \
    android.hardware.health@2.0-service

# Platform
PRODUCT_PLATFORM := sp9832e

# VNDK
PRODUCT_TARGET_VNDK_VERSION := 29

PRODUCT_PACKAGES_DEBUG += \
    update_engine_client

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload
