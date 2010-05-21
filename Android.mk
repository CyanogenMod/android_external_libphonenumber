# Copyright (C) 2009 The Android Open Source Project
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
#

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_STATIC_JAVA_LIBRARIES := protobuf

LOCAL_SRC_FILES := java/src/com/google/i18n/phonenumbers/AsYouTypeFormatter.java \
	java/src/com/google/i18n/phonenumbers/NumberParseException.java \
	java/src/com/google/i18n/phonenumbers/Phonemetadata.java \
	java/src/com/google/i18n/phonenumbers/Phonenumber.java \
	java/src/com/google/i18n/phonenumbers/PhoneNumberUtil.java \
	java/src/com/google/i18n/phonenumbers/RegexCache.java

LOCAL_JAVA_RESOURCE_DIRS := java/resources/com/google/i18n/phonenumbers/src/generated_files

LOCAL_MODULE := libphonenumber

include $(BUILD_JAVA_LIBRARY)
#################################
include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := protobuf:java/lib/protobuf-lite.jar
include $(BUILD_MULTI_PREBUILT)
