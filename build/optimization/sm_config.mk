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

# CMRemix-MM Optimization
  GRAPHITE_OPTIMIZATION := false
  LOCAL_STRICT_ALIASING := true
  ENABLE_GCC_DEFAULTS := true
  O3_OPTIMIZATIONS := true

# enabled Debuggable by default
PRODUCT_PROPERTY_OVERRIDES += \
   persist.service.adb.enable=1 \
   persist.service.debuggable=1 \
   persist.sys.usb.config=mtp,adb

# setup scheduler tunable
PRODUCT_PROPERTY_OVERRIDES += \
   ro.qualcomm.perf.cores_online=2
