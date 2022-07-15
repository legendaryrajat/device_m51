#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit device configuration
$(call inherit-product, device/samsung/m51/device.mk)

# Inherit from the 64 bit configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common AEX stuff
$(call inherit-product, vendor/aosp/config/common.mk)

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

## Device identifier. This must come after all inclusions
PRODUCT_NAME := aosp_m51
PRODUCT_DEVICE := m51
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M515F
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_SHIPPING_API_LEVEL := 30
