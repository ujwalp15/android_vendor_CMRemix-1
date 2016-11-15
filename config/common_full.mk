# Inherit common CM stuff
$(call inherit-product, vendor/cmremix/config/common.mk)

PRODUCT_SIZE := full

# Themes
PRODUCT_PACKAGES += \
    HexoLibre
