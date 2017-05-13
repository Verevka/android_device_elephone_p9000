# Kernel informations
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --board 1465391499 --ramdisk_offset 0x04f88000 --second_offset 0x00e88000 --tags_offset 0x03f88000

# Kernel properties

ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_KERNEL_SOURCE := kernel/iman/victor
TARGET_KERNEL_CONFIG := lineage_victor_defconfig
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)

	PRODUCT_COPY_FILES += \
    	$(LOCAL_KERNEL):kernel
endif
