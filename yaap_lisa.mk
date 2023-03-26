#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lisa device
$(call inherit-product, device/xiaomi/lisa/device.mk)

# Inherit some common YAAP stuff.
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)
scr_resolution := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := yaap_lisa
PRODUCT_DEVICE := lisa
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Xiaomi 11 Lite NE
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=lisa \
    PRIVATE_BUILD_DESC="lisa-user 13 RKQ1.211001.001 V14.0.6.0.TKOCNXM release-keys"

BUILD_FINGERPRINT := Xiaomi/lisa/lisa:13/RKQ1.211001.001/V14.0.6.0.TKOCNXM:user/release-keys
