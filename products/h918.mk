# Check for target product
ifeq (cmremix_h918,$(TARGET_PRODUCT))

# Kernel Toolchain
# TARGET_KERNEL_CUSTOM_TOOLCHAIN := aarch64-7.0

# Include CMRemix common configuration
include vendor/cmremix/config/cmremix_common.mk

# Inherit CMRemix device configuration
$(call inherit-product, device/lge/h918/cmremix.mk)

endif
