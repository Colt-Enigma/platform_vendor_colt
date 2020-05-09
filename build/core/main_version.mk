# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# ColtOS System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.colt.build.date=$(COLT_BUILD_DATE) \
    ro.colt.build.version=$(COLT_BUILD_VERSION) \
    ro.colt.display.version=$(COLT_DISPLAY_VERSION) \
    ro.colt.fingerprint=$(COLT_FINGERPRINT) \
    ro.colt.releasetype=$(COLT_BUILD_TYPE) \
    ro.colt.version=$(COLT_VERSION) \
    ro.colt.maintainer=$(COLT_DEVICE_MAINTAINER)
