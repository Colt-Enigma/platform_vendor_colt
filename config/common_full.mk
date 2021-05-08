# Inherit common Colt stuff
$(call inherit-product, vendor/colt/config/common_mobile.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
