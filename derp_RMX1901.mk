#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from RMX1901 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/aosip/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Realme
PRODUCT_DEVICE := RMX1901
PRODUCT_MANUFACTURER := Realme
PRODUCT_NAME := derp_RMX1901
PRODUCT_MODEL := Realme X

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="coral-user 10 QQ3A.200705.002 6506677 release-keys" \
    PRODUCT_NAME="RMX1901"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "google/coral/coral:10/QQ3A.200705.002/6506677:user/release-keys"

TARGET_BOOT_ANIMATION_RES := 1080

# Gapps
$(call inherit-product-if-exists, vendor/gapps/config.mk)

# Specify arch for gapps
TARGET_GAPPS_ARCH=arm64