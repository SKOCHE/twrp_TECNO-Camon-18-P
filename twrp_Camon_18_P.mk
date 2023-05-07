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

# Inherit from TECNO Camon 18 P device
$(call inherit-product, device/Tecno/Camon 18 P/device.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Camon 18 P
PRODUCT_NAME := twrp_Camon 18 P
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := Comon 18 P
PRODUCT_MANUFACTURER := Tecno
PRODUCT_RELEASE_NAME := Tecno Comon 18 P

