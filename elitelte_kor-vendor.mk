# Copyright (C) 2024 The LineageOS Project
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

# Curated vendor set for elitelte_kor.
#
# Keep the Marshmallow proprietary HALs out of first-boot diagnostics. Android
# 8.1 provides enough generic services for early init/adbd, but SurfaceFlinger
# requires a real OpenGL ES 2.0 implementation. Keep the stock Adreno blobs,
# while display HAL modules are built from Qualcomm source in the device tree.

PRODUCT_PACKAGES += \
    libtinyxml

ELITELTE_KOR_VENDOR_PATH := vendor/samsung/elitelte_kor/proprietary

PRODUCT_COPY_FILES += \
    $(ELITELTE_KOR_VENDOR_PATH)/bin/btnvtool:system/bin/btnvtool \
    $(ELITELTE_KOR_VENDOR_PATH)/bin/cnss-daemon:system/bin/cnss-daemon \
    $(ELITELTE_KOR_VENDOR_PATH)/bin/macloader:system/bin/macloader \
    $(ELITELTE_KOR_VENDOR_PATH)/bin/netmgrd:system/bin/netmgrd \
    $(ELITELTE_KOR_VENDOR_PATH)/bin/qmuxd:system/bin/qmuxd \
    $(ELITELTE_KOR_VENDOR_PATH)/bin/rmt_storage:system/bin/rmt_storage \
    $(ELITELTE_KOR_VENDOR_PATH)/bin/time_daemon:system/bin/time_daemon \
    $(ELITELTE_KOR_VENDOR_PATH)/bin/wcnss_service:system/bin/wcnss_service \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/bluetooth/av_performance.conf:system/etc/bluetooth/av_performance.conf \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/bluetooth/iop_bt.db:system/etc/bluetooth/iop_bt.db \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/bluetooth/iop_device_list.conf:system/etc/bluetooth/iop_device_list.conf \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/firmware/wlan/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/firmware/wlan/prima/grippower.info:system/etc/firmware/wlan/prima/grippower.info \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/General_cal.acdb:system/etc/General_cal.acdb \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/Global_cal.acdb:system/etc/Global_cal.acdb \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/Handset_cal.acdb:system/etc/Handset_cal.acdb \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/Headset_cal.acdb:system/etc/Headset_cal.acdb \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/Speaker_cal.acdb:system/etc/Speaker_cal.acdb \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/mixer_paths_qrd_sku1.xml:system/etc/mixer_paths_qrd_sku1.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/mixer_paths_qrd_sku2.xml:system/etc/mixer_paths_qrd_sku2.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/mixer_paths_qrd_skum.xml:system/etc/mixer_paths_qrd_skum.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/mixer_paths_qrd_skun.xml:system/etc/mixer_paths_qrd_skun.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/mixer_paths_wcd9306.xml:system/etc/mixer_paths_wcd9306.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/mixer_paths_wcd9326.xml:system/etc/mixer_paths_wcd9326.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/mixer_paths_wcd9330.xml:system/etc/mixer_paths_wcd9330.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/mixer_paths_wcd9335.xml:system/etc/mixer_paths_wcd9335.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/wifi/fstman.ini:system/etc/wifi/fstman.ini \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/hw/audio.primary.msm8937.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/audio.primary.msm8937.so \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/hw/bluetooth.default.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/bluetooth.default.so \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/libSamsungPostProcess.so:$(TARGET_COPY_OUT_VENDOR)/lib/libSamsungPostProcess.so \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/libSamsungPostProcessConvertor.so:$(TARGET_COPY_OUT_VENDOR)/lib/libSamsungPostProcessConvertor.so \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/libSamsungPreProcess.so:$(TARGET_COPY_OUT_VENDOR)/lib/libSamsungPreProcess.so \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/libaudioroute.so:$(TARGET_COPY_OUT_VENDOR)/lib/libaudioroute.so \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/libbt-iopdb.so:$(TARGET_COPY_OUT_VENDOR)/lib/libbt-iopdb.so \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/libbt-iopdb_mod.so:$(TARGET_COPY_OUT_VENDOR)/lib/libbt-iopdb_mod.so \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/libbt-vendor.so:$(TARGET_COPY_OUT_VENDOR)/lib/libbt-vendor.so \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/libedmnativehelper.so:$(TARGET_COPY_OUT_VENDOR)/lib/libedmnativehelper.so \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/libpower.so:$(TARGET_COPY_OUT_VENDOR)/lib/libpower.so \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/librmnetctl.so:$(TARGET_COPY_OUT_VENDOR)/lib/librmnetctl.so \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/libsecnativefeature.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsecnativefeature.so \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/libsec-ril.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsec-ril.so \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/libsecril-client.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsecril-client.so \
    $(ELITELTE_KOR_VENDOR_PATH)/lib/libsamsungVoipResampler.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsamsungVoipResampler.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libacdb-fts.so:$(TARGET_COPY_OUT_VENDOR)/lib/libacdb-fts.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libacdbloader.so:$(TARGET_COPY_OUT_VENDOR)/lib/libacdbloader.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libacdbmapper.so:$(TARGET_COPY_OUT_VENDOR)/lib/libacdbmapper.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libacdbrtac.so:$(TARGET_COPY_OUT_VENDOR)/lib/libacdbrtac.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libaudcal.so:$(TARGET_COPY_OUT_VENDOR)/lib/libaudcal.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libbtnv.so:$(TARGET_COPY_OUT_VENDOR)/lib/libbtnv.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libconfigdb.so:$(TARGET_COPY_OUT_VENDOR)/lib/libconfigdb.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libdsutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdsutils.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libidl.so:$(TARGET_COPY_OUT_VENDOR)/lib/libidl.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libmdmdetect.so:$(TARGET_COPY_OUT_VENDOR)/lib/libmdmdetect.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libnetmgr.so:$(TARGET_COPY_OUT_VENDOR)/lib/libnetmgr.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libperipheral_client.so:$(TARGET_COPY_OUT_VENDOR)/lib/libperipheral_client.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libqcci_legacy.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcci_legacy.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libqmi.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libqmi_cci.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi_cci.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libqmi_client_helper.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi_client_helper.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libqmi_client_qmux.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi_client_qmux.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libqmi_common_so.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi_common_so.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libqmi_csi.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi_csi.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libqmi_encdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi_encdec.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libqmiservices.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmiservices.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libril-qcril-hook-oem.so:$(TARGET_COPY_OUT_VENDOR)/lib/libril-qcril-hook-oem.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libtime_genoff.so:$(TARGET_COPY_OUT_VENDOR)/lib/libtime_genoff.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libxml.so:$(TARGET_COPY_OUT_VENDOR)/lib/libxml.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/egl/eglSubDriverAndroid.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/eglSubDriverAndroid.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/egl/eglsubAndroid.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/eglsubAndroid.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/egl/libEGL_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libEGL_adreno.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/egl/libESXEGL_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libESXEGL_adreno.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/egl/libESXGLESv1_CM_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libESXGLESv1_CM_adreno.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/egl/libESXGLESv2_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libESXGLESv2_adreno.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/egl/libGLESv1_CM_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libGLESv1_CM_adreno.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/egl/libGLESv2_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libGLESv2_adreno.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/egl/libQTapGLES.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libQTapGLES.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/egl/libRBEGL_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libRBEGL_adreno.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/egl/libRBGLESv1_CM_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libRBGLESv1_CM_adreno.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/egl/libRBGLESv2_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libRBGLESv2_adreno.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/egl/libq3dtools_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libq3dtools_adreno.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/egl/libq3dtools_esx.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libq3dtools_esx.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libC2D2.so:$(TARGET_COPY_OUT_VENDOR)/lib/libC2D2.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libCB.so:$(TARGET_COPY_OUT_VENDOR)/lib/libCB.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libOpenCL.so:$(TARGET_COPY_OUT_VENDOR)/lib/libOpenCL.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libRSDriver_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/libRSDriver_adreno.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libadreno_utils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libadreno_utils.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libdiag.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdiag.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libgsl.so:$(TARGET_COPY_OUT_VENDOR)/lib/libgsl.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libllvm-glnext.so:$(TARGET_COPY_OUT_VENDOR)/lib/libllvm-glnext.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libllvm-qcom.so:$(TARGET_COPY_OUT_VENDOR)/lib/libllvm-qcom.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/librs_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/librs_adreno.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/librs_adreno_sha1.so:$(TARGET_COPY_OUT_VENDOR)/lib/librs_adreno_sha1.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libsc-a3xx.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsc-a3xx.so \
    $(ELITELTE_KOR_VENDOR_PATH)/vendor/lib/libscalar.so:$(TARGET_COPY_OUT_VENDOR)/lib/libscalar.so \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    $(ELITELTE_KOR_VENDOR_PATH)/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw
