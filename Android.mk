LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),elitelte)

define add-elitelte-prebuilt
include $(CLEAR_VARS)
LOCAL_MODULE := $(1)
LOCAL_SRC_FILES := $(2)
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_OWNER := samsung
LOCAL_PROPRIETARY_MODULE := true
$(if $(3),LOCAL_MODULE_RELATIVE_PATH := $(3))
include $(BUILD_PREBUILT)
endef

$(eval $(call add-elitelte-prebuilt,lights.msm8937,proprietary/vendor/lib/hw/lights.msm8937.so,hw))

$(eval $(call add-elitelte-prebuilt,libsdm-color,proprietary/vendor/lib/libsdm-color.so))
$(eval $(call add-elitelte-prebuilt,libsdm-diag,proprietary/vendor/lib/libsdm-diag.so))
$(eval $(call add-elitelte-prebuilt,libsdm-disp-apis,proprietary/vendor/lib/libsdm-disp-apis.so))
$(eval $(call add-elitelte-prebuilt,libsdmextension,proprietary/vendor/lib/libsdmextension.so))

endif
