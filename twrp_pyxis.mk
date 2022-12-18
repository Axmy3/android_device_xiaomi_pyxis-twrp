#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from pyxis device
$(call inherit-product, device/xiaomi/pyxis/device.mk)

PRODUCT_DEVICE := pyxis
PRODUCT_NAME := twrp_pyxis
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9 Lite
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    sys.usb.controller=a600000.dwc3 \
    sys.usb.rndis.func.name=rndis_bam \
    sys.usb.rmnet.func.name=rmnet_bam \
    persist.sys.isUsbOtgEnabled=true \
    vendor.gatekeeper.disable_spu=true

PRODUCT_BUILD_PROP_OVERRIDES += \
	TARGET_DEVICE=pyxis \
	PRODUCT_NAME=pyxis

PRODUCT_PROPERTY_OVERRIDES += \
	ro.treble.enabled=true \
	ro.adb.secure=0

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
	ro.bootimage.build.date.utc \
	ro.build.date.utc
