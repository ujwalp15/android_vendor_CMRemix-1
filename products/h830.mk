# Check for target product
ifeq (cmremix_h830,$(TARGET_PRODUCT))

# Include CM-Remix common configuration
include vendor/cmremix/config/cmremix_common.mk

# Inherit CM device configuration
$(call inherit-product, device/lge/h830/cmremix.mk)

endif
