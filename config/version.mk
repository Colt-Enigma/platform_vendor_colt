# Copyright (C) 2018 ColtOS Project
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

# Versioning System

ifndef COLT_BUILD_TYPE
    COLT_BUILD_TYPE := Unofficial
endif

# Only include Colt OTA for official builds
ifeq ($(filter-out Official,$(COLT_BUILD_TYPE)),)
    PRODUCT_PACKAGES += \
        Updater
endif

TARGET_PRODUCT_SHORT := $(subst colt_,,$(TARGET_PRODUCT))

# Set all versions
COLT_VERSION = 5.7
COLT_BUILD_DATE := $(shell date -u +%d-%m-%Y)
COLT_BUILD_VERSION := ColtOS-v$(COLT_VERSION)-$(COLT_BUILD_TYPE)-$(shell date -u +%Y%m%d)-$(TARGET_PRODUCT_SHORT)
COLT_FINGERPRINT := ColtOS/v$(COLT_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date -u +%Y%m%d)/$(shell date -u +%H%M)
COLT_DISPLAY_VERSION := ColtOS-v$(COLT_VERSION)-$(COLT_BUILD_TYPE)

PRODUCT_PROPERTY_OVERRIDES += \
	ro.colt.display.version=$(COLT_DISPLAY_VERSION)
