# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from cattail device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := cattail
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_cattail
PRODUCT_MODEL := M2006C3MII

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := cattail
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="cattail-user 10 QP1A.190711.020 V12.0.5.0.QCTINXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Redmi/cattail/cattail:10/QP1A.190711.020/V12.0.5.0.QCTINXM:user/release-keys
