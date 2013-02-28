PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)

$(call inherit-product, device/lge/cayman/device.mk)

# Screen density
PRODUCT_LOCALES += hdpi

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_cayman
PRODUCT_DEVICE := i_cayman
PRODUCT_BRAND := MetroPCS
PRODUCT_MODEL := MS849 4G
PROUDCT_MANUFACTURER := LGE
