# CMREMIX Rom version
export CMREMIX_VERSION= MM_6.0.1_R3_Nightly_cm13_v0.1
# Zion Kernel version
export KERNEL_VERSION= ZION959-cm-13.0-trlte-v1.6

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

# supersu
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/supersu.zip:supersu/supersu.zip

# CMRemix Required
PRODUCT_PACKAGES += \
    CMRemixOTA \
    CMRemixUpdater
