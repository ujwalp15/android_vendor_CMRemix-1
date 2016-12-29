# Inherit common CM stuff
$(call inherit-product, vendor/cmremix/config/common_full.mk)

# Required CM packages
PRODUCT_PACKAGES += \
    LatinIME

# Include CM LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/cmremix/overlay/dictionaries

$(call inherit-product, vendor/cmremix/config/telephony.mk)
