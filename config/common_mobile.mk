# Inherit common mobile Colt stuff
$(call inherit-product, vendor/colt/config/common.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    ExactCalculator

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Customizations
PRODUCT_PACKAGES += \
    NavigationBarMode2ButtonOverlay

# Media
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    media.recorder.show_manufacturer_and_model=true

# SystemUI plugins
PRODUCT_PACKAGES += \
    QuickAccessWallet
