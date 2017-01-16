# Check for target product
ifeq (cmremix_oneplus3,$(TARGET_PRODUCT))

# Include CM-Remix common configuration
include vendor/cmremix/config/cmremix_common.mk

# Inherit CM device configuration
$(call inherit-product, device/oneplus/oneplus3/cmremix.mk)

endif
