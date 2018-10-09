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

COLT_TAG=Enigma

# COLT RELEASE VERSION
COLT_VERSION_MAJOR = 3
COLT_VERSION_MINOR = 0
COLT_VERSION_MAINTENANCE =

VERSION := $(COLT_VERSION_MAJOR).$(COLT_VERSION_MINOR)$(COLT_VERSION_MAINTENANCE)


ifndef COLT_BUILDTYPE
    ifdef RELEASE_TYPE
        # Starting with "COLT_" is optional
        RELEASE_TYPE := $(shell echo $(RELEASE_TYPE) | sed -e 's|^COLT_||g')
        COLT_BUILDTYPE := $(RELEASE_TYPE)
    endif
endif

ifeq ($(COLT_BUILDTYPE), OFFICIAL)
    COLT_VERSION := ColtOS-$(COLT_TAG)-$(VERSION)_$(COLT_BUILDTYPE)-$(shell date -u +%Y%m%d)-$(COLT_BUILD)

else ifeq ($(COLT_BUILDTYPE), EXPERIMENTAL)
    COLT_VERSION := ColtOS-$(COLT_TAG)-$(VERSION)_$(COLT_BUILDTYPE)-$(shell date -u +%Y%m%d)-$(COLT_BUILD) 

else
    # If COLT_BUILDTYPE is not defined, set to UNOFFICIAL
    COLT_BUILDTYPE := UNOFFICIAL
    COLT_VERSION := ColtOS-$(COLT_TAG)-$(VERSION)_$(COLT_BUILDTYPE)-$(shell date -u +%Y%m%d)-$(COLT_BUILD)
endif

