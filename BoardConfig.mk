# Device path
LOCAL_PATH := device/umidigi/A7_pro

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
BOARD_HAS_MTK_HARDWARE := true
MTK_HARDWARE := true
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_CPU_ABI_LIST_64_BIT := $(TARGET_CPU_ABI)
TARGET_CPU_ABI_LIST_32_BIT := $(TARGET_2ND_CPU_ABI),$(TARGET_2ND_CPU_ABI2)
TARGET_CPU_ABI_LIST := $(TARGET_CPU_ABI_LIST_64_BIT),$(TARGET_CPU_ABI_LIST_32_BIT)
TARGET_USES_64_BIT_BINDER := true

# Platform
TARGET_BOARD_PLATFORM := mt6765

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := mt6765

# Kernel
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_BASE          := 0x40078000
BOARD_KERNEL_OFFSET        := 0x00008000
BOARD_KERNEL_TAGS_OFFSET   := 0x13f88000
BOARD_KERNEL_SECOND_OFFSET := 0x00e88000
BOARD_RAMDISK_OFFSET       := 0x14f88000
BOARD_DTB_OFFSET           := 0x13f88000
TARGET_KERNEL_ARCH := arm64
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(LOCAL_PATH)/prebuilt/dtb
BOARD_PREBUILT_DTBOIMAGE := $(LOCAL_PATH)/prebuilt/dtbo
BOARD_INCLUDE_RECOVERY_DTBO := true
BOARD_INCLUDE__DTB_IN_BOOTIMG := true
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --second_offset $(BOARD_KERNEL_SECOND_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb_offset $(BOARD_DTB_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)
TARGET_KERNEL_SOURCE := kernel/blu/G90
TARGET_KERNEL_CONFIG := G90_defconfig

#system size (with los gsi and with deleted product partition)
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1072619520
# Avb
BOARD_AVB_ENABLE := true
BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)

# Partitions
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432

# Dynamic Partition
BOARD_SUPER_PARTITION_SIZE := 3581935616
BOARD_SUPER_PARTITION_GROUPS := qti_dynamic_partitions
BOARD_DYNAMIC_PARTITIONS_SIZE := 3581935616
BOARD_DYNAMIC_PARTITIONS_PARTITION_LIST := product vendor system

# System as root
BOARD_ROOT_EXTRA_FOLDERS := bluetooth dsp firmware persist

# system.prop
TARGET_SYSTEM_PROP := device/umidigi/A7_pro/system.prop

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# Workaround for error copying vendor files to recovery ramdisk
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
# TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/root/etc/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
RECOVERY_SDCARD_ON_DATA := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
TARGET_DISABLE_TRIPLE_BUFFERING := false
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"

########
# TWRP #
########

# VERSION
TW_DEVICE_VERSION := TEST_MRMAZAK_1

# Resolution
TW_THEME := portrait_hdpi
DEVICE_SCREEN_WIDTH := 720
DEVICE_SCREEN_HEIGHT := 1520

# Display
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 188
TW_MAX_BRIGHTNESS := 255
TW_NO_SCREEN_BLANK := true
TW_NO_SCREEN_TIMEOUT := true
TW_NO_BATT_PERCENT := false
TW_SCREEN_BLANK_ON_BOOT := true

TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone1/temp
TW_USE_TOOLBOX := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true

# Excludes
TW_EXCLUDE_TWRPAPP := true

# Crypto
TW_INCLUDE_CRYPTO := false
# TW_INCLUDE_CRYPTO_FBE := true
# TW_INCLUDE_FBE_METADATA_DECRYPT := true
BOARD_USES_METADATA_PARTITION := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/platform/bootdevice/by-name/userdata"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "nosuid,nodev,noatime,discard,noauto_da_alloc,barrier=0,data=ordered"

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
TW_CRYPTO_SYSTEM_VOLD_DEBUG := true

# Storage
TW_HAS_MTP := true
TW_MTP_DEVICE := /dev/mtp_usb
# TW_INTERNAL_STORAGE_PATH := "/data/media"
# TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_NO_USB_STORAGE := false

# Languages
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := en

##########
# SHARP  #
##########

# NOTE - Dont use '-' or blank spaces in flag values , otherwise it will create build errors or other bugs in recovery (Excluding SHRP_PATH,SHRP_REC). 
# Path of your SHRP Tree
# SHRP_PATH := device/umidigi/A7_pro
# Maintainer name *
SHRP_MAINTAINER := ANDROID2468
# Device codename *
SHRP_DEVICE_CODE := A7Pro
# Recovery Type (It can be treble,normal,SAR) [Only for About Section] *
SHRP_REC_TYPE := Treble
# Recovery Type (It can be A/B or A_only) [Only for About Section] *
SHRP_DEVICE_TYPE := A/B
# This device has rounded edges
SHRP_STATUSBAR_RIGHT_PADDING := 40 SHRP_STATUSBAR_LEFT_PADDING := 40SHRP_STATUSBAR_RIGHT_PADDING := 40 SHRP_STATUSBAR_LEFT_PADDING := 40\
# this device has a cam notch
SHRP_NOTCH := true
# Theme patching and password (no idea if this is going to work.)
SHRP_EXPRESS := true
# No EDL mode because it MTK
SHRP_EDL_MODE := 0
# storge
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb-otg
# Flashlight (using device_meizu_mblu2 device tree for info)
SHRP_CUSTOM_FLASHLIGHT := true
SHRP_FLASH := 1
SHRP_FLASH_MAX_BRIGHTNESS := 200
SHRP_FONP_1 := /proc/torch
SHRP_FONP_2 := /proc/torch
SHRP_FONP_3 := /proc/torch
# Recovery mount point
SHRP_REC := /dev/block/platform/bootdevice/by-name/recovery 
#Treble 
SHRP_AB := true
# Recovery Type (It can be treble,normal,SAR) [Only for About Section]
SHRP_REC_TYPE := Treble
# Recovery Type (It can be A/B or A_only) [Only for About Section]
SHRP_DEVICE_TYPE := A/B