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

$(eval $(call add-elitelte-prebuilt,audio.primary.msm8937,proprietary/vendor/lib/hw/audio.primary.msm8937.so,hw))
$(eval $(call add-elitelte-prebuilt,copybit.msm8937,proprietary/vendor/lib/hw/copybit.msm8937.so,hw))
$(eval $(call add-elitelte-prebuilt,gralloc.msm8937,proprietary/vendor/lib/hw/gralloc.msm8937.so,hw))
$(eval $(call add-elitelte-prebuilt,hwcomposer.msm8937,proprietary/vendor/lib/hw/hwcomposer.msm8937.so,hw))
$(eval $(call add-elitelte-prebuilt,lights.msm8937,proprietary/vendor/lib/hw/lights.msm8937.so,hw))
$(eval $(call add-elitelte-prebuilt,memtrack.msm8937,proprietary/vendor/lib/hw/memtrack.msm8937.so,hw))

$(eval $(call add-elitelte-prebuilt,libmemalloc,proprietary/vendor/lib/libmemalloc.so))
$(eval $(call add-elitelte-prebuilt,libqdMetaData,proprietary/vendor/lib/libqdMetaData.so))
$(eval $(call add-elitelte-prebuilt,libqdutils,proprietary/vendor/lib/libqdutils.so))
$(eval $(call add-elitelte-prebuilt,libqservice,proprietary/vendor/lib/libqservice.so))

$(eval $(call add-elitelte-prebuilt,libsdm-color,proprietary/vendor/lib/libsdm-color.so))
$(eval $(call add-elitelte-prebuilt,libsdm-diag,proprietary/vendor/lib/libsdm-diag.so))
$(eval $(call add-elitelte-prebuilt,libsdm-disp-apis,proprietary/vendor/lib/libsdm-disp-apis.so))
$(eval $(call add-elitelte-prebuilt,libsdmcore,proprietary/vendor/lib/libsdmcore.so))
$(eval $(call add-elitelte-prebuilt,libsdmextension,proprietary/vendor/lib/libsdmextension.so))
$(eval $(call add-elitelte-prebuilt,libsdmutils,proprietary/vendor/lib/libsdmutils.so))

endif
