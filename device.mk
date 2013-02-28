$(call inherit-product-if-exists, vendor/lge/cayman/cayman-vendor.mk)

include device/lge/iproj/device.mk

DEVICE_PACKAGE_OVERLAYS += device/lge/cayman/overlay

# Bluetooth
PRODUCT_COPY_FILES += \
	device/lge/cayman/prebuilt/init.qcom.bt.sh:system/bin/init.qcom.bt.sh

## Ramdisk
PRODUCT_COPY_FILES += \
	device/lge/cayman/prebuilt/root/init.iproj.rc:root/init.iproj.rc \
	device/lge/cayman/prebuilt/root/init.iproj.usb.rc:root/init.iproj.usb.rc \
	device/lge/cayman/prebuilt/root/init.qcom.sh:root/init.qcom.sh \
	device/lge/cayman/prebuilt/root/ueventd.iproj.rc:root/ueventd.iproj.rc

# Recovery
PRODUCT_COPY_FILES += \
	device/lge/cayman/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh

# Sim ToolKit
PRODUCT_PACKAGES += \
	Stk
