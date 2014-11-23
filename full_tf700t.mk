# Copyright (C) 2011 The Android Open Source Project
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

#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Configure as hdpi device 
PRODUCT_AAPT_CONFIG := normal mdpi hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_tf700t
PRODUCT_DEVICE := tf700t
PRODUCT_BRAND := Asus
PRODUCT_MODEL := TF700T

# Inherit from those products. Most specific first.
$(call inherit-product, device/asus/tf700t/device_tf700t.mk)
# This is where we'd set a backup provider if we had one
