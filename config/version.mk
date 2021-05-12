# ColtOS Versioning System
COLT_MAJOR_VERSION = 11.0
COLT_RELEASE_VERSION = v7.0
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

PRODUCT_GENERIC_PROPERTIES += \
  ro.colt.device=$(COLT_BUILD) \
  ro.colt.version=$(COLT_VERSION) \
  ro.colt.build.version=$(COLT_BUILD_VERSION) \
  ro.colt.build.type=$(COLT_BUILD_TYPE) \
  ro.colt.build.date=$(COLT_BUILD_DATE) \
  ro.colt.build.fingerprint=$(COLT_BUILD_FINGERPRINT) \
  ro.colt.build.maintainer=$(COLT_BUILD_MAINTAINER)
