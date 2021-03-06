# Copyright (C) 2018-19 The Superior OS Project
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

LOCAL_PATH := $(call my-dir)

#SimTogglePlus
include $(CLEAR_VARS)
LOCAL_MODULE := SimTogglePlus
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := prebuilt/$(LOCAL_MODULE).apk
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_PRODUCT)/priv-app
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_PRODUCT_MODULE := true
LOCAL_DEX_PREOPT := false
LOCAL_REQUIRED_MODULES := privapp-permissions-simtoggleplus.xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := privapp-permissions-simtoggleplus.xml
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/$(TARGET_COPY_OUT_PRODUCT)/etc/permissions
LOCAL_SRC_FILES := prebuilt/$(LOCAL_MODULE)
include $(BUILD_PREBUILT)
