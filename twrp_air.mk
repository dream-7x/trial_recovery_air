
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Inherit from generic device
$(call inherit-product, device/xiaomi/air/device.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

PRODUCT_DEVICE := air
PRODUCT_NAME := twrp_air
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 13C 5G
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
