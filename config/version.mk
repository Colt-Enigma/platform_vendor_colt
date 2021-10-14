#
# Copyright (C) 2021 The ColtOS Project
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
#

# ColtOS Versioning System
COLT_MAJOR_VERSION = 12.0
COLT_RELEASE_VERSION = v8.0
COLT_BUILD_TYPE ?= Unofficial
COLT_BUILD_MAINTAINER ?= Unknown

# Colt Release
ifeq ($(COLT_BUILD_TYPE), Official)
  OFFICIAL_DEVICES = $(shell cat vendor/colt/enigma.devices)
  FOUND_DEVICE =  $(filter $(COLT_BUILD), $(OFFICIAL_DEVICES))
    ifeq ($(FOUND_DEVICE),$(COLT_BUILD))
      COLT_BUILD_TYPE := Official
    else
      COLT_BUILD_TYPE := Unofficial
      $(error Device is not official "$(COLT_BUILD)")
    endif

PRODUCT_PACKAGES += \
    Updates

endif

# System version
TARGET_PRODUCT_SHORT := $(subst colt_,,$(COLT_BUILD_TYPE))

COLT_DATE_YEAR := $(shell date -u +%Y)
COLT_DATE_MONTH := $(shell date -u +%m)
COLT_DATE_DAY := $(shell date -u +%d)
COLT_DATE_HOUR := $(shell date -u +%H)
COLT_DATE_MINUTE := $(shell date -u +%M)

COLT_BUILD_DATE := $(COLT_DATE_YEAR)$(COLT_DATE_MONTH)$(COLT_DATE_DAY)-$(COLT_DATE_HOUR)$(COLT_DATE_MINUTE)
COLT_BUILD_VERSION := $(COLT_RELEASE_VERSION)
COLT_BUILD_FINGERPRINT := ColtOS/$(COLT_MOD_VERSION)/$(TARGET_PRODUCT_SHORT)/$(COLT_BUILD_DATE)
COLT_VERSION := ColtOS-$(COLT_MAJOR_VERSION)-$(COLT_BUILD_VERSION)-$(COLT_BUILD)-$(COLT_BUILD_TYPE)-$(COLT_BUILD_DATE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.colt.device=$(COLT_BUILD) \
  ro.colt.version=$(COLT_VERSION) \
  ro.colt.build.version=$(COLT_BUILD_VERSION) \
  ro.colt.build.type=$(COLT_BUILD_TYPE) \
  ro.colt.build.date=$(COLT_BUILD_DATE) \
  ro.colt.build.fingerprint=$(COLT_BUILD_FINGERPRINT) \
  ro.colt.build.maintainer=$(COLT_BUILD_MAINTAINER) \
  ro.colt.main.version=$(COLT_MAJOR_VERSION)
