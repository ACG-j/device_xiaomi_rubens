#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from rubens device
$(call inherit-product, device/xiaomi/rubens/device.mk)

PRODUCT_DEVICE := rubens
PRODUCT_NAME := lineage_rubens
# TODO: 填写 rubens 的品牌（Redmi / POCO / Xiaomi）
PRODUCT_BRAND := Redmi
# TODO: 填写 rubens 的型号名称（如 Redmi Note 11 Pro+ 5G 等）
PRODUCT_MODEL := Redmi K50
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

# Boot animation
# TODO: 如果 rubens 分辨率不同，修改以下三项
TARGET_SCREEN_HEIGHT := 3200
TARGET_SCREEN_WIDTH := 1440
TARGET_BOOT_ANIMATION_RES := 1440

# TODO: 如果 rubens 屏幕密度不同，修改以下项
TARGET_SCREEN_DENSITY := 560

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

TARGET_SUPPORTS_QUICK_TAP := true

PRODUCT_SYSTEM_NAME := rubens
PRODUCT_SYSTEM_DEVICE := rubens

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rubens-user 14 UP1A.231005.007 V816.0.10.0.ULNCNXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Xiaomi/rubens/rubens:14/UP1A.231005.007/V816.0.10.0.ULNCNXM:user/release-keys
