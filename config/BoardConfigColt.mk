include vendor/colt/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/colt/config/BoardConfigQcom.mk
endif

include vendor/colt/config/BoardConfigSoong.mk
