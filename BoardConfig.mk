#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/j4primelte
TARGET_VENDOR := samsung

# Inherit from common msm8917-common
-include device/samsung/msm8917-common/BoardConfigCommon.mk

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_CORTEX_A53 := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# Assert
TARGET_OTA_ASSERT_DEVICE := j4primelte, j4primeltedx

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := RG13A002KU
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 260

# DRM
TARGET_ENABLE_MEDIADRM_64 := true

# Filesystem
TARGET_USES_MKE2FS := true

# Kernel
TARGET_KERNEL_CONFIG := j4primelte_defconfig
TARGET_KERNEL_HEADER_ARCH := arm64

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2453520000
BOARD_VENDORIMAGE_PARTITION_SIZE := 295698432
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12348030976 # 25765059584 - 16384
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 106954752
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Platform
BOARD_USES_QCOM_HARDWARE := true
TARGET_BOARD_PLATFORM := msm8937

# Inherit from the proprietary version
-include vendor/samsung/j4primelte/BoardConfigVendor.mk
