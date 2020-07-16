# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# ColtOS System Version
ADDITIONAL_BUILD_PROPERTIES += \
    ro.colt.buildtype=$(COLT_BUILD_TYPE) \
    ro.colt.build.date=$(COLT_BUILD_DATE) \
    ro.colt.display.version=$(COLT_DISPLAY_VERSION) \
    ro.colt.maintainer=$(COLT_DEVICE_MAINTAINER) \
    ro.colt.major_version=$(COLT_MAJOR_VERSION) \
    ro.colt.releasetype=$(COLT_BUILD_TYPE) \
    ro.colt.release.version=$(COLT_RELEASE_VERSION) \
    ro.colt.version=$(COLT_VERSION) \
    ro.modversion=$(COLT_MOD_VERSION) \
    org.colt.fingerprint=$(COLT_FINGERPRINT)
