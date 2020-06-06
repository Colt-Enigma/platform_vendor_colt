# Copyright (C) 2020 ColtOS Project
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
COLT_MAJOR_VERSION = 10.0

COLT_RELEASE_VERSION = v6.1

COLT_BUILD_TYPE ?= Unofficial

COLT_BUILD_DATE := $(shell date +"%Y%m%d")

TARGET_PRODUCT_SHORT := $(subst colt_,,$(COLT_BUILD))

COLT_VERSION := ColtOS-$(COLT_RELEASE_VERSION)-$(COLT_BUILD)-$(COLT_BUILD_DATE)-$(COLT_BUILD_TYPE)

COLT_MOD_VERSION := $(COLT_MAJOR_VERSION)-$(COLT_RELEASE_VERSION)

COLT_DISPLAY_VERSION := ColtOS-$(COLT_RELEASE_VERSION)-$(COLT_BUILD_TYPE)

COLT_FINGERPRINT := ColtOS/$(COLT_MOD_VERSION)/$(TARGET_PRODUCT_SHORT)/$(COLT_BUILD_DATE)
