$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/bq/tenshi/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata \
    device/bq/tenshi/kernel:kernel

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tenshi
PRODUCT_NAME := omni_tenshi
PRODUCT_BRAND := bq
PRODUCT_MODEL := Aquaris U Plus
PRODUCT_MANUFACTURER := bq

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=tenshi
