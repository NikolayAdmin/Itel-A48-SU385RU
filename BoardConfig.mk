DEVICE_PATH := device/itel/L6006

# Additional binaries & libraries needed for recovery
TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster4 \
    libpuresoftkeymasterdevice \
    ashmemd_aidl_interface-cpp \
    libashmemd_client

TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/ashmemd_aidl_interface-cpp.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libashmemd_client.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so \

# Architecture
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := L6006

#boark NAME
#BOARD_NAME := sharkle

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := sp9832e_1h10_32b
TARGET_NO_BOOTLOADER := true

#creates the metadata directory
BOARD_USES_METADATA_PARTITION := true

# Crypto
#TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
#TW_INCLUDE_FBE_METADATA_DECRYPT := true

# Display
TW_BRIGHTNESS_PATH := "/sys/devices/platform/sprd_backlight/backlight/sprd_backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 150
TW_MAX_BRIGHTNESS := 255
TW_NO_SCREEN_TIMEOUT := true

# Excludes
TW_EXCLUDE_APEX := true
TW_EXCLUDE_TWRPAPP := true

# File systems
BOARD_BOOTIMAGE_PARTITION_SIZE := 36700160
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 36700160
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_USERIMAGES_USE_F2FS := true

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# For debugging
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true

#for dynamic partitions feature
BOARD_BUILD_SUPER_IMAGE_BY_DEFAULT := true
BOARD_SUPER_PARTITION_SIZE := 2621440000
BOARD_SUPER_PARTITION_GROUPS := group_unisoc
BOARD_GROUP_UNISOC_SIZE := 2621440000
BOARD_GROUP_UNISOC_PARTITION_LIST := system vendor product


# Kernel
#BOARD_KERNEL_CMDLINE := earlycon=sprd_serial,0x70100000,115200n8 console=ttyS1,115200n8 loglevel=1 init=/init root=/dev/ram0 rw androidboot.selinux=permissive androidboot.hardware=sp9832e_1h10_go androidboot.dtbo_idx=0 printk.devkmsg=on androidboot.boot_devices=soc/soc:ap-ahb/20600000.sdio
#BOARD_KERNEL_CMDLINE += earlycon=sprd_serial,0x70100000,115200n8
#BOARD_KERNEL_CMDLINE += console=ttyS1,115200n8
#BOARD_KERNEL_CMDLINE += loglevel=1
#BOARD_KERNEL_CMDLINE += init=/init
#BOARD_KERNEL_CMDLINE += root=/dev/ram0
#BOARD_KERNEL_CMDLINE += rw
#BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
#BOARD_KERNEL_CMDLINE += androidboot.hardware=sp9832e_1h10_go
#BOARD_KERNEL_CMDLINE += androidboot.dtbo_idx=0
#BOARD_KERNEL_CMDLINE += printk.devkmsg=on
#BOARD_KERNEL_CMDLINE += androidboot.boot_devices=soc/soc:ap-ahb/20600000.sdio

BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_IMAGE_NAME := zImage
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/zImage
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x05400000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_KERNEL_SECOND_OFFSET := 0x00f00000
BOARD_DTB_OFFSET := 0x01715000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)

TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_HEADER_ARCH := arm

# Platform
TARGET_BOARD_PLATFORM := sp9832e
TARGET_GPU_PLATFORM := midgard

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888

# Resolution
DEVICE_SCREEN_WIDTH := 720
DEVICE_SCREEN_HEIGHT := 1560
TW_THEME := portrait_hdpi

# Security patch version
PLATFORM_VERSION := 10
PLATFORM_SECURITY_PATCH := 2020-12-05
VENDOR_SECURITY_PATCH := 2020-12-05

# Show build time on the splash screen
TW_DEVICE_VERSION=$(shell date '+%Y%m%d') by Samurai

# SPRD hardware
BOARD_USES_SPRD_HARDWARE := true

#SPRD: set property overrides split
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
BUILD_BROKEN_DUP_RULES := true

# System as root
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP Configuration
TW_EXTRA_LANGUAGES := false
TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_NO_SCREEN_BLANK := true
#TW_SCREEN_BLANK_ON_BOOT := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_USE_TOOLBOX := true

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA4096
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa4096.pem
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := 1
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor
