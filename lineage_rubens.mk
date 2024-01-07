#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from rubens device
$(call inherit-product, device/xiaomi/rubens/device.mk)

PRODUCT_DEVICE := rubens
PRODUCT_NAME := lineage_rubens
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 22041211AC
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phone_cn-user 13 TP1A.220624.014 V14.0.10.0.TLNCNXM release-keys"

BUILD_FINGERPRINT := Redmi/rubens/rubens:12/SP1A.210812.016/V14.0.10.0.TLNCNXM:user/release-keys
