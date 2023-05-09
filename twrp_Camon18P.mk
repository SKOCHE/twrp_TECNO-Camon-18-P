#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2023 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := device/Tecno/Camon18P

# Release name
PRODUCT_RELEASE_NAME := Camon18P

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit from device
$(call inherit-product, device/Tecno/Camon18P/device.mk)

# Inherit some common twrp stuff.
#$(call inherit-product, vendor/omni/config/common_tablet.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Camon18P
PRODUCT_NAME := twrp_Camon18P
PRODUCT_BRAND := Tecno
PRODUCT_MODEL := Camon18P
PRODUCT_MANUFACTURER := Tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Camon18P \
    BUILD_PRODUCT=Camon18P \
    PRODUCT_NAME=Camon18P \
