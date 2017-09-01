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
COLT_VERSION = 5.4
COLT_BUILD_DATE := $(shell date -u +%d-%m-%Y)
COLT_BUILD_VERSION := ColtOS-v$(COLT_VERSION)-$(shell date -u +%Y%m%d)-$(COLT_BUILD_TYPE)-$(TARGET_PRODUCT_SHORT)
COLT_FINGERPRINT := ColtOS/v$(COLT_VERSION)/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(shell date -u +%Y%m%d)/$(shell date -u +%H%M)
