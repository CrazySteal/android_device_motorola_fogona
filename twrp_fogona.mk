#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from fogona device
$(call inherit-product, device/motorola/fogona/device.mk)

PRODUCT_DEVICE := fogona
PRODUCT_NAME := twrp_fogona
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g play - 2024
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fogona-user 13 T3TFS33.66-37-3 44d6fc release-keys"

BUILD_FINGERPRINT := motorola/fogona/fogona:13/T3TFS33.66-37-3/44d6fc:user/release-keys
