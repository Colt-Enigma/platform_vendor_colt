# Copyright (C) 2018 The ColtOS Project
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

#Bootanimation

TARGET_BOOT_ANIMATION_RES ?= undefined

ifeq ($(TARGET_BOOT_ANIMATION_RES),720x1280)
     PRODUCT_COPY_FILES += vendor/colt/prebuilt/common/media/720x1280.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),768x1280)
     PRODUCT_COPY_FILES += vendor/colt/prebuilt/common/media/768x1280.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1080x1920)
     PRODUCT_COPY_FILES += vendor/colt/prebuilt/common/media/1080x1920.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1080x2160)
     PRODUCT_COPY_FILES += vendor/colt/prebuilt/common/media/1080x2160.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1080x2280)
     PRODUCT_COPY_FILES += vendor/colt/prebuilt/common/media/1080x2280.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1440x2560)
     PRODUCT_COPY_FILES += vendor/colt/prebuilt/common/media/1440x2560.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),1440x2880)
     PRODUCT_COPY_FILES += vendor/colt/prebuilt/common/media/1440x2880.zip:system/media/bootanimation.zip
else ifeq ($(TARGET_BOOT_ANIMATION_RES),undefined)
     $(warning Target bootanimation res is undefined, using generic bootanimation )
     PRODUCT_COPY_FILES += vendor/colt/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
else
     $(warning Defined bootanimation res is wrong, using generic bootanimation )
     PRODUCT_COPY_FILES += vendor/colt/prebuilt/common/media/bootanimation.zip:system/media/bootanimation.zip
endif
