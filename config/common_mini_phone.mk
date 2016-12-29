$(call inherit-product, vendor/cmremix/config/common_mini.mk)

# Required CM packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/cmremix/config/telephony.mk)
