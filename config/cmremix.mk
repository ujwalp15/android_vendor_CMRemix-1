# CMREMIX Rom version
export CMREMIX_VERSION= MM_6.0.1_R13_Nightly_v7.5
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

#CMRemix Build Changelog
#export BUILD_CMREMIX_CHANGELOG=true

# supersu
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/etc/supersu.zip:supersu/supersu.zip

# CMRemix Required
PRODUCT_PACKAGES += \
    CMRemixOTA \
    CMRemixUpdater

# Busybox
PRODUCT_PACKAGES += \
    OmniSwitch \
    Busybox

# Viper4Android
PRODUCT_COPY_FILES += \
vendor/cm/prebuilt/common/apk/ViPER4Android/ViPER4Android_FX_A4.x/ViPER4Android_FX_A4.x.apk:system/app/ViPER4Android/ViPER4Android_FX_A4.x.apk
vendor/cm/prebuilt/common/apk/ViPER4Android/addon.d/95-LolliViPER.sh:system/addon.d/95-LolliViPER.sh
vendor/cm/prebuilt/common/apk/ViPER4Android/audio_policy.sh:system/audio_policy.sh

# KCAL - Advanced color control for Qualcomm MDSS 8x26/8974/8084
PRODUCT_COPY_FILES += \
vendor/cm/prebuilt/common/apk/Savoca-Kcal/Savoca-Kcal.apk:system/app/Savoca-Kcal/Savoca-Kcal.apk

# MDNIE-tuner
PRODUCT_COPY_FILES += \
vendor/cm/prebuilt/common/apk/MDNIE-tuner/MDNIE-tuner.apk:system/app/MDNIE-tuner/MDNIE-tuner.apk

# OpenCamra
PRODUCT_COPY_FILES += \
vendor/cm/prebuilt/common/apk/OpenCamera/OpenCamera.apk:system/app/OpenCamera/OpenCamera.apk

# KernelAdiutor
PRODUCT_COPY_FILES += \
    vendor/cm/prebuilt/common/apk/KernelAdiutor/KernelAdiutor.apk:system/app/KernelAdiutor/KernelAdiutor.apk
