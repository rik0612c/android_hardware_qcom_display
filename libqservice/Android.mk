LOCAL_PATH := $(call my-dir)
include $(LOCAL_PATH)/../common.mk
include $(CLEAR_VARS)

LOCAL_MODULE                  := libqservice
LOCAL_VENDOR_MODULE           := true
LOCAL_MODULE_TAGS             := optional
LOCAL_C_INCLUDES              := $(common_includes)
LOCAL_SHARED_LIBRARIES        := $(common_libs) libbinder
LOCAL_CFLAGS                  := $(common_flags) -DLOG_TAG=\"qdqservice\"
LOCAL_HEADER_LIBRARIES        := display_headers generated_kernel_headers
LOCAL_SRC_FILES               := QService.cpp \
                                 IQService.cpp \
                                 IQClient.cpp

include $(BUILD_SHARED_LIBRARY)