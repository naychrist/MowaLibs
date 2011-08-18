LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := BasicGUI

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../../include \
					$(LOCAL_PATH)/../../../../../../include
LOCAL_SRC_FILES := ../../../../src/SimpleGUI.cpp \
				   ../../src/BasicApp.cpp

LOCAL_LDLIBS    := -landroid
LOCAL_STATIC_LIBRARIES := cinder freeimage ft2 android_native_app_glue 

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)
$(call import-module,cinder)

