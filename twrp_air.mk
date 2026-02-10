#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure 64-bit
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure Virtual A/B
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Configure launch_with_vendor_ramdisk.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Configure twrp common.mk
$(call inherit-product, vendor/twrp/config/common.mk)


# Inherit from air device
$(call inherit-product, device/xiaomi/air/device.mk)

PRODUCT_USE_DYNAMIC_PARTITIONS := true
ENABLE_VIRTUAL_AB := true

PRODUCT_DEVICE := air
PRODUCT_NAME := twrp_air
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Xiaomi Air
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="miodm_air_global-user 13 TP1A.220624.014 OS2.0.204.0.VGQMIXM release-keys"

BUILD_FINGERPRINT := Redmi/air/air:13/TP1A.220624.014/OS2.0.204.0.VGQMIXM:user/release-keys
