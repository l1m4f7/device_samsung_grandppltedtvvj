#
# Copyright (C) 2012 The CyanogenMod Project
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

# WARNING: Everything listed here will be built on ALL platforms,
# including x86, the emulator, and the SDK.  Modules must be uniquely
# named (liblights.tuna), and must build everywhere, or limit themselves
# to only building on ARM if they include assembly. Individual makefiles
# are responsible for having their own logic, for fine-grained control.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

$(shell (cp kernel/samsung/grandpplte/firmware/tsp_zinitix/FIRMWARE.BIN kernel/samsung/grandpplte/firmware/tsp_zinitix/bt541_GP.fw))
$(shell (mkdir -p out/target/product/grandpplte/obj/KERNEL_OBJ/firmware/tsp_zinitix/))
$(shell (cp kernel/samsung/grandpplte/firmware/tsp_zinitix/FIRMWARE.BIN out/target/product/grandpplte/obj/KERNEL_OBJ/firmware/tsp_zinitix/bt541_GP.fw))
#$(shell (mkdir -p out/target/product/grandpplte/obj/lib/))
#$(shell (cp device/samsung/grandpplte/lib/libaudiopolicymanager.so out/target/product/grandpplte/obj/lib/libaudiopolicymanager.so))

ifeq ($(TARGET_DEVICE),grandpplteser)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
