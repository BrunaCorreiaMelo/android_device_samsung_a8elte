# Inherit device configuration
$(call inherit-product, device/samsung/a8hplte/device.mk)
$(call inherit-product, device/samsung/a8hplte/device-common.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit nfc enhanced configuration
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_a8hplte
PRODUCT_DEVICE := a8hplte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A800I
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=a8hplte
