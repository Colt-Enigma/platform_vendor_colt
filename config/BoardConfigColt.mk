# APEX
ifneq ($(filter RELEASE NIGHTLY SNAPSHOT EXPERIMENTAL,$(LINEAGE_BUILDTYPE)),)
    TARGET_FLATTEN_APEX := true
endif

# Charger
ifeq ($(WITH_LINEAGE_CHARGER),true)
    BOARD_HAL_STATIC_LIBRARIES := libhealthd.colt
endif

include vendor/colt/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/colt/config/BoardConfigQcom.mk
endif

include vendor/colt/config/BoardConfigSoong.mk
