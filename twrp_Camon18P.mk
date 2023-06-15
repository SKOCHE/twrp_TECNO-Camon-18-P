#
# Copyright (C) 2021 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Device Target Name
PRODUCT_RELEASE_NAME := Camon18P
PRODUCT_USE_DYNAMIC_PARTITIONS := true
# Define hardware platform
PRODUCT_PLATFORM := mt6781

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit from TECNO Camon18P device
$(call inherit-product, device/Tecno/Camon18P/device.mk)
$(call inherit-product, vendor/twrp/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := Camon18P
PRODUCT_NAME := twrp_Camon18P
PRODUCT_BRAND := Tecno
PRODUCT_MODEL := Camon18P
PRODUCT_MANUFACTURER := Tecno
  
# fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=Camon18P \
    PRODUCT_NAME=Camon18P \
    PRIVATE_BUILD_DESC="vnd_ch7n_h812-user 12 SP1A.210812.016 197442 release-keys"

BUILD_FINGERPRINT := TECNO/CH7n-OP/TECNO-CH7n:12/SP1A.210812.016/221221V364:user/release-keys

# HACK: Set vendor patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.build.security_patch=2099-12-31
