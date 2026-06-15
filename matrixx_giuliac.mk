#
# Copyright (C) 2025 The MatrixxOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from giuliac device
$(call inherit-product, device/oneplus/giuliac/device.mk)

# Inherit some common Matrixx stuff.
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

# Lunaris Flags
LUNARIS_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_CUSTOM_UDFPS := true
TARGET_OPTIMIZED_DEXOPT := true
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120
WITH_GMS := true
WITH_BCR := true

# Matrixx Build Flags
MATRIXX_MAINTAINER := ZeroSquared
TARGET_INCLUDE_MATLOG := true
WITH_EXTRA_GAPPS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
WITH_GMS_COMMS_SUITE := true
WITH_GMS_AICORE := true
SURFACE_FLINGER_BOOST := true
USE_REALITY_ENGINE := false
PRODUCT_NO_CAMERA := false
BYPASS_CHARGE_SUPPORTED := false

PRODUCT_NAME := matrixx_giuliac
PRODUCT_DEVICE := giuliac
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PKG110

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1773715376500 release-keys" \
    BuildFingerprint=OnePlus/PKG110/OP5D2BL1:16/UKQ1.231108.001/V.2c4bad7-941cd2-975a61:user/release-keys \
    DeviceName=OP5D2BL1 \
    DeviceProduct=PKG110 \
    SystemDevice=OP5D2BL1 \
    SystemName=PKG110
