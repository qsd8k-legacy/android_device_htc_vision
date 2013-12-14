# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from common msm7x30
-include device/htc/msm7x30-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/htc/vision/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := vision
BOARD_KERNEL_BASE := 0x4000000

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240

# Partition info
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 435941376
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1394606080

# Kernel
TARGET_KERNEL_CONFIG := vision_andromadus_ion_pmem_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/vision/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/htc/vision/configs/libbt_vndcfg.txt

# Misc
BOARD_USE_LEGACY_TRACKPAD := true
TARGET_ARCH_LOWMEM := true

