#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
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

# Inherit from the Device Tree itself.
$(call inherit-product, device/Tecno/Camon18P/device.mk)

# Inherit from TWRP-common stuffs, if building TWRP.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Device Identifier
PRODUCT_DEVICE := Camon18P
PRODUCT_NAME := twrp_Camon18P
PRODUCT_BRAND := Tecno
PRODUCT_MODEL := Camon18P
PRODUCT_MANUFACTURER := Tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_64_tecno-user 12 SP1A.210812.016 198666 release-keys"

BUILD_FINGERPRINT := TECNO/CH7n-OP/TECNO-CH7n:12/SP1A.210812.016/221222V597:user/release-keys
