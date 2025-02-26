#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from thyme device
$(call inherit-product, device/xiaomi/thyme/device.mk)

# include private signing keys
-include vendor/niigo-priv/keys/keys.mk

# AxionAOSP flags start
# Camera
AXION_CAMERA_REAR_INFO := 108,13,2,2
AXION_CAMERA_FRONT_INFO := 20
PRODUCT_NO_CAMERA := false

# Processor
AXION_PROCESSOR := Qualcomm_Snapdragon_870

# Maintainer
AXION_MAINTAINER := fukiame

# LOS prebuilts inclusion
TARGET_INCLUDES_LOS_PREBUILTS := true

# AxionAOSP flags end

PRODUCT_NAME := lineage_thyme
PRODUCT_DEVICE := thyme
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := M2102J2SC

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="thyme-user 13 RKQ1.211001.001 V816.0.4.0.TGACNXM release-keys" \
    BuildFingerprint=Xiaomi/thyme/thyme:13/RKQ1.211001.001/V816.0.4.0.TGACNXM:user/release-keys
