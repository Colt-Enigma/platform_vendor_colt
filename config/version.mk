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

#Extended Versioning
COLT_VERSION = ENIGMA

#ifndef EXTENDED_BUILD_TYPE
    EXTENDED_BUILD_TYPE := ALPHA
#endif

TARGET_PRODUCT_SHORT := $(subst colt_,,$(CUSTOM_BUILD))


COLT_BUILD_DATE := $(shell date -u +%Y%m%d-%H%M)
COLT_MOD_VERSION := Colt-$(COLT_VERSION)-$(COLT_BUILD_DATE)-$(COLT_BUILD_TYPE)
COLT_FINGERPRINT := Colt/$(COLT_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(COLT_BUILD_DATE)


PRODUCT_GENERIC_PROPERTIES += \
  ro.colt.version=$(COLT_VERSION) \
  ro.colt.releasetype=$(COLT_BUILD_TYPE) \
  ro.modversion=$(COLT_MOD_VERSION)

COLT_DISPLAY_VERSION := Colt-$(COLT_VERSION)-$(COLT_BUILD_TYPE)

PRODUCT_GENERIC_PROPERTIES += \
  ro.colt.display.version=$(COLT_DISPLAY_VERSION) \
  ro.colt.fingerprint=$(COLT_FINGERPRINT)

