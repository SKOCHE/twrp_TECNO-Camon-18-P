#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from TECNO-CH7n device
$(call inherit-product, device/tecno/TECNO-CH7n/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := CH7n
PRODUCT_NAME := twrp_TECNO-CH7n
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := Comon 18P
PRODUCT_MANUFACTURER := tecno
PRODUCT_RELEASE_NAME := Tecno Comon 18P

