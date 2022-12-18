#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/xiaomi/pyxis

# Inherit language packages
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

TW_EXCLUDE_APEX := true

PRODUCT_SOON_NAMESPACES += \
    vendor/qcom/opensource/commonsys-intf/display

# API
PRODUCT_SHIPPING_API_LEVEL := 28

#OEM otacert
PRODUCT_EXTRA_RECOVERY_KEYS += \
    vendor/recovery/security/miui

# qcom decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe
    
# Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
	libion \
	vendor.display.config@1.0 \
	vendor.display.config@2.0 \
	libdisplayconfig.qti

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libion.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@1.0.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/vendor.display.config@2.0.so \
    $(TARGET_OUT_SYSTEM_EXT_SHARED_LIBRARIES)/libdisplayconfig.qti.so
