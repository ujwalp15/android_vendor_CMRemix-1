# CMREMIX Rom version
export CMREMIX_VERSION= N_7.1.0_r7_Nightly_cm14.1_v0.2
# Zion Kernel version
export KERNEL_VERSION= ZION959_cm-14.1-h830_v1.0

# CM-Remix version
CMREMIXVERSION := $(shell echo $(CMREMIX_VERSION) | sed -e 's/^[ \t]*//;s/[ \t]*$$//;s/ /./g')
BOARD := $(subst cmremix_,,$(TARGET_PRODUCT))
CMREMIX_BUILD_VERSION := CMRemix_$(CM_BUILD)_$(CMREMIXVERSION)_$(shell date +%Y%m%d-%H%M%S)
PRODUCT_NAME := $(TARGET_PRODUCT)

# statistics identity
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cmremix.version=$(CMREMIXVERSION) \
    ro.modversion=$(CMREMIX_BUILD_VERSION) \
    cmremix.ota.version=$(CMREMIX_BUILD_VERSION)

