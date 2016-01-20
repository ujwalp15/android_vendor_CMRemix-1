# Copyright (C) 2015 The CMRemix Rom Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# CMRemix Optimization

# Custom Toolchain
  TARGET_NDK_VERSION := 4.9
  TARGET_SM_AND := 4.9
  TARGET_SM_KERNEL := 4.9

# Uber-MM Optimization
  STRICT_ALIASING := true
  KRAIT_TUNINGS := true
  ENABLE_GCCONLY := true
  GRAPHITE_OPTS := true
  USE_ARM_MODE := true
# DISABLE_DTC_OPTS := true

# Clang Qcom Optimization
DISABLE_CLANG_QCOM_OPTIMIZATIONS := true
ifneq ($(DISABLE_CLANG_QCOM_OPTIMIZATIONS),true)
  USE_CLANG_QCOM := true
  USE_CLANG_QCOM_VERBOSE := true
  USE_CLANG_QCOM_POLLY := true
  CLANG_QCOM_COMPILE_ART := false
  CLANG_QCOM_COMPILE_BIONIC := false
  CLANG_QCOM_COMPILE_MIXED := false
endif

# enabled Debuggable by default
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
   persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
   persist.sys.usb.config=mtp,adb
