# CM-Remix version
CMREMIXVERSION := $(shell echo $(CMREMIX_VERSION) | sed -e 's/^[ \t]*//;s/[ \t]*$$//;s/ /./g')
BOARD := $(subst cmremix_,,$(TARGET_PRODUCT))
CMREMIX_BUILD_VERSION := CMRemix_$(BOARD)_$(CMREMIXVERSION)_$(shell date +%Y%m%d-%H%M%S)
PRODUCT_NAME := $(TARGET_PRODUCT)

# Lower RAM devices
ifeq ($(CMREMIX_LOW_RAM_DEVICE),true)
MALLOC_IMPL := dlmalloc
TARGET_BOOTANIMATION_TEXTURE_CACHE := false

PRODUCT_PROPERTY_OVERRIDES += \
    config.disable_atlas=true \
    dalvik.vm.jit.codecachesize=0 \
    persist.sys.force_highendgfx=true \
    ro.config.low_ram=true \
    ro.config.max_starting_bg=8 \
    ro.sys.fw.bg_apps_limit=16
endif

# ROMStats Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cmremixstats.name=CMRemix Rom \
    ro.cmremixstats.version=$(CMREMIXVERSION) \
    ro.cmremixstats.tframe=1

# statistics identity
PRODUCT_PROPERTY_OVERRIDES += \
    ro.cmremix.version=$(CMREMIXVERSION) \
    ro.modversion=$(CMREMIX_BUILD_VERSION) \
    cmremix.ota.version=$(CMREMIX_BUILD_VERSION)

# Disable ADB authentication and set root access to Apps and ADB, Debuggable by default
ifneq ($(DISABLE_ADB_AUTH),true)
    ADDITIONAL_DEFAULT_PROPERTIES += \
        ro.secure=0 \
        ro.adb.secure=0 \
        persist.sys.root_access=3 \
        persist.service.adb.enable=1 \
        persist.service.debuggable=1 \
        persist.sys.usb.config=mtp,adb
endif

# Add and Remove
ifeq ($(CMREMIX_USE_ADDREMOVE),true)
    GET_PROJECT_RMS := $(shell vendor/cm/tools/removeprojects.py $(PRODUCT_NAME))
    GET_PROJECT_ADDS := $(shell vendor/cm/tools/addprojects.py $(PRODUCT_NAME))
endif

# CMRemixOTA
PRODUCT_PACKAGES += \
    CMRemixUpdater


# KCAL - Advanced color control for Qualcomm MDSS 8x26/8974/8084
PRODUCT_COPY_FILES += \
vendor/cmremix/prebuilt/common/apk/Savoca-Kcal/Savoca-Kcal.apk:system/app/Savoca-Kcal/Savoca-Kcal.apk
