#################################
# TWRP - specific Configuration #
#################################
RECOVERY_SDCARD_ON_DATA := true
TW_THEME := portrait_hdpi
TW_EXCLUDE_DEFAULT_USB_INIT := true
#TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_SCREEN_BLANK := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TARGET_USES_MKE2FS := true # Use mke2fs to create ext4 images
TW_HAS_MTP := true
TW_INCLUDE_NTFS_3G := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true

# Debug-tools
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true

# NTFS Support
TW_INCLUDE_FUSE_NTFS := true

# Excludes
TW_EXCLUDE_TWRP_APP := true
TW_EXCLUDE_APEX := true

# Include some binaries
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_BASH := true

# Maintainer/Version
TW_DEVICE_VERSION := perilouspike

# Set brightness path and level
TW_MAX_BRIGHTNESS := 2047
TW_DEFAULT_BRIGHTNESS := 1000
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
