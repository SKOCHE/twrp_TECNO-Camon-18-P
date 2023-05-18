#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from TECNO-CH7n device
$(call inherit-product, device/tecno/TECNO-CH7n/device.mk)

PRODUCT_DEVICE := TECNO-CH7n
PRODUCT_NAME := twrp_TECNO-CH7n
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CH7n
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ch7n_h812-user 12 SP1A.210812.016 197442 release-keys"

BUILD_FINGERPRINT := TECNO/CH7n-OP/TECNO-CH7n:12/SP1A.210812.016/221221V364:user/release-keys
