#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#

PRODUCT_SOONG_NAMESPACES += $(LOCAL_DIR)/init

PRODUCT_MAKEFILES := $(LOCAL_DIR)/twrp_L6006.mk

COMMON_LUNCH_CHOICES := twrp_L6006-eng
