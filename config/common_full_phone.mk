# Inherit full common Colt stuff
$(call inherit-product, vendor/colt/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Colt LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/colt/overlay/dictionaries

$(call inherit-product, vendor/colt/config/telephony.mk)
