# Set Colt specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit full common Colt stuff
$(call inherit-product, vendor/colt/config/common_full_phone.mk)
