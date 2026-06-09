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

# Curated vendor set for elitelte.
#
# Keep the Marshmallow proprietary HALs out of first-boot diagnostics. Android
# 8.1 provides enough generic services for early init/adbd, but SurfaceFlinger
# requires a real OpenGL ES 2.0 implementation. Keep the stock Adreno blobs,
# while display HAL modules are built from Qualcomm source in the device tree.

PRODUCT_PACKAGES += \
    libtinyxml

ELITELTE_VENDOR_PATH := vendor/samsung/elitelte/proprietary

PRODUCT_COPY_FILES += \
    $(ELITELTE_VENDOR_PATH)/bin/btnvtool:system/bin/btnvtool \
    $(ELITELTE_VENDOR_PATH)/bin/cnss-daemon:system/bin/cnss-daemon \
    $(ELITELTE_VENDOR_PATH)/bin/macloader:system/bin/macloader \
    $(ELITELTE_VENDOR_PATH)/bin/netmgrd:system/bin/netmgrd \
    $(ELITELTE_VENDOR_PATH)/bin/pm-service:system/bin/pm-service \
    $(ELITELTE_VENDOR_PATH)/bin/qmuxd:system/bin/qmuxd \
    $(ELITELTE_VENDOR_PATH)/bin/smdexe:system/bin/smdexe \
    $(ELITELTE_VENDOR_PATH)/bin/connfwexe:system/bin/connfwexe \
    $(ELITELTE_VENDOR_PATH)/bin/ddexe:system/bin/ddexe \
    $(ELITELTE_VENDOR_PATH)/bin/at_distributor:system/bin/at_distributor \
    $(ELITELTE_VENDOR_PATH)/bin/diag_uart_log:system/bin/diag_uart_log \
    $(ELITELTE_VENDOR_PATH)/bin/diag_mdlog:system/bin/diag_mdlog \
    $(ELITELTE_VENDOR_PATH)/bin/rmt_storage:system/bin/rmt_storage \
    $(ELITELTE_VENDOR_PATH)/bin/time_daemon:system/bin/time_daemon \
    $(ELITELTE_VENDOR_PATH)/bin/wcnss_service:system/bin/wcnss_service \
    $(ELITELTE_VENDOR_PATH)/etc/bluetooth/auto_pair_devlist.conf:system/etc/bluetooth/auto_pair_devlist.conf \
    $(ELITELTE_VENDOR_PATH)/etc/control_netmgrd.sh:system/etc/control_netmgrd.sh \
    $(ELITELTE_VENDOR_PATH)/etc/bluetooth/av_performance.conf:system/etc/bluetooth/av_performance.conf \
    $(ELITELTE_VENDOR_PATH)/etc/bluetooth/ble_stack.conf:system/etc/bluetooth/ble_stack.conf \
    $(ELITELTE_VENDOR_PATH)/etc/bluetooth/iop_bt.db:system/etc/bluetooth/iop_bt.db \
    $(ELITELTE_VENDOR_PATH)/etc/bluetooth/iop_device_list.conf:system/etc/bluetooth/iop_device_list.conf \
    $(ELITELTE_VENDOR_PATH)/etc/firmware/wlan/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(ELITELTE_VENDOR_PATH)/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(ELITELTE_VENDOR_PATH)/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(ELITELTE_VENDOR_PATH)/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    $(ELITELTE_VENDOR_PATH)/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
    $(ELITELTE_VENDOR_PATH)/etc/firmware/wlan/prima/grippower.info:system/etc/firmware/wlan/prima/grippower.info \
    $(ELITELTE_VENDOR_PATH)/etc/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    $(ELITELTE_VENDOR_PATH)/etc/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(ELITELTE_VENDOR_PATH)/etc/audio_platform_info_extcodec.xml:system/etc/audio_platform_info_extcodec.xml \
    $(ELITELTE_VENDOR_PATH)/etc/audio_platform_info_extcodec.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info_extcodec.xml \
    $(ELITELTE_VENDOR_PATH)/etc/audio_policy.conf:system/etc/audio_policy.conf \
    $(ELITELTE_VENDOR_PATH)/etc/audio_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy.conf \
    $(ELITELTE_VENDOR_PATH)/etc/data/netmgr_config.xml:system/etc/data/netmgr_config.xml \
    $(ELITELTE_VENDOR_PATH)/etc/data/qmi_config.xml:system/etc/data/qmi_config.xml \
    $(ELITELTE_VENDOR_PATH)/etc/data/dsi_config.xml:system/etc/data/dsi_config.xml \
    $(ELITELTE_VENDOR_PATH)/etc/Bluetooth_cal.acdb:system/etc/Bluetooth_cal.acdb \
    $(ELITELTE_VENDOR_PATH)/etc/Bluetooth_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/Bluetooth_cal.acdb \
    $(ELITELTE_VENDOR_PATH)/etc/General_cal.acdb:system/etc/General_cal.acdb \
    $(ELITELTE_VENDOR_PATH)/etc/General_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/General_cal.acdb \
    $(ELITELTE_VENDOR_PATH)/etc/Global_cal.acdb:system/etc/Global_cal.acdb \
    $(ELITELTE_VENDOR_PATH)/etc/Global_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/Global_cal.acdb \
    $(ELITELTE_VENDOR_PATH)/etc/Handset_cal.acdb:system/etc/Handset_cal.acdb \
    $(ELITELTE_VENDOR_PATH)/etc/Handset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/Handset_cal.acdb \
    $(ELITELTE_VENDOR_PATH)/etc/Hdmi_cal.acdb:system/etc/Hdmi_cal.acdb \
    $(ELITELTE_VENDOR_PATH)/etc/Hdmi_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/Hdmi_cal.acdb \
    $(ELITELTE_VENDOR_PATH)/etc/Headset_cal.acdb:system/etc/Headset_cal.acdb \
    $(ELITELTE_VENDOR_PATH)/etc/Headset_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/Headset_cal.acdb \
    $(ELITELTE_VENDOR_PATH)/etc/Speaker_cal.acdb:system/etc/Speaker_cal.acdb \
    $(ELITELTE_VENDOR_PATH)/etc/Speaker_cal.acdb:$(TARGET_COPY_OUT_VENDOR)/etc/Speaker_cal.acdb \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_mtp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_mtp.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_qrd_sku1.xml:system/etc/mixer_paths_qrd_sku1.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_qrd_sku1.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_sku1.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_qrd_sku2.xml:system/etc/mixer_paths_qrd_sku2.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_qrd_sku2.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_sku2.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_qrd_skuh.xml:system/etc/mixer_paths_qrd_skuh.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_qrd_skuh.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skuh.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_qrd_skuhf.xml:system/etc/mixer_paths_qrd_skuhf.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_qrd_skuhf.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skuhf.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_qrd_skui.xml:system/etc/mixer_paths_qrd_skui.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_qrd_skui.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skui.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_qrd_skum.xml:system/etc/mixer_paths_qrd_skum.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_qrd_skum.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skum.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_qrd_skun.xml:system/etc/mixer_paths_qrd_skun.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_qrd_skun.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_qrd_skun.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_skuk.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_skuk.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_wcd9306.xml:system/etc/mixer_paths_wcd9306.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_wcd9306.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9306.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_wcd9326.xml:system/etc/mixer_paths_wcd9326.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_wcd9326.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9326.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_wcd9330.xml:system/etc/mixer_paths_wcd9330.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_wcd9330.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9330.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_wcd9335.xml:system/etc/mixer_paths_wcd9335.xml \
    $(ELITELTE_VENDOR_PATH)/etc/mixer_paths_wcd9335.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_wcd9335.xml \
    $(ELITELTE_VENDOR_PATH)/etc/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    $(ELITELTE_VENDOR_PATH)/etc/sound_trigger_mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/sound_trigger_mixer_paths.xml \
    $(ELITELTE_VENDOR_PATH)/etc/sensors/hals.conf:system/etc/sensors/hals.conf \
    $(ELITELTE_VENDOR_PATH)/etc/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf \
    $(ELITELTE_VENDOR_PATH)/etc/sensors/sensor_def_qcomdev.conf:system/etc/sensors/sensor_def_qcomdev.conf \
    $(ELITELTE_VENDOR_PATH)/etc/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf \
    $(ELITELTE_VENDOR_PATH)/etc/wifi/fstman.ini:system/etc/wifi/fstman.ini \
    $(ELITELTE_VENDOR_PATH)/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(ELITELTE_VENDOR_PATH)/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(ELITELTE_VENDOR_PATH)/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    vendor/samsung/elitelte/configs/seccomp_policy/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(ELITELTE_VENDOR_PATH)/lib/hw/audio.primary.msm8937.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/audio.primary.msm8937.so \
    $(ELITELTE_VENDOR_PATH)/lib/hw/sensors.msm8937.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/sensors.msm8937.so \
    $(ELITELTE_VENDOR_PATH)/lib/lib_SamsungRec_V04013.so:$(TARGET_COPY_OUT_VENDOR)/lib/lib_SamsungRec_V04013.so \
    $(ELITELTE_VENDOR_PATH)/lib/libSamsungPostProcess.so:$(TARGET_COPY_OUT_VENDOR)/lib/libSamsungPostProcess.so \
    $(ELITELTE_VENDOR_PATH)/lib/libSamsungPostProcessConvertor.so:$(TARGET_COPY_OUT_VENDOR)/lib/libSamsungPostProcessConvertor.so \
    $(ELITELTE_VENDOR_PATH)/lib/libSamsungPreProcess.so:$(TARGET_COPY_OUT_VENDOR)/lib/libSamsungPreProcess.so \
    $(ELITELTE_VENDOR_PATH)/lib/libaudioroute.so:$(TARGET_COPY_OUT_VENDOR)/lib/libaudioroute.so \
    $(ELITELTE_VENDOR_PATH)/lib/libbt-iopdb.so:$(TARGET_COPY_OUT_VENDOR)/lib/libbt-iopdb.so \
    $(ELITELTE_VENDOR_PATH)/lib/libbt-iopdb_mod.so:$(TARGET_COPY_OUT_VENDOR)/lib/libbt-iopdb_mod.so \
    $(ELITELTE_VENDOR_PATH)/lib/libicu55.so:$(TARGET_COPY_OUT_VENDOR)/lib/libicu55.so \
    $(ELITELTE_VENDOR_PATH)/lib/libbt-vendor.so:$(TARGET_COPY_OUT_VENDOR)/lib/libbt-vendor.so \
    $(ELITELTE_VENDOR_PATH)/lib/lib_soundaliveresampler.so:$(TARGET_COPY_OUT_VENDOR)/lib/lib_soundaliveresampler.so \
    $(ELITELTE_VENDOR_PATH)/lib/libedmnativehelper.so:$(TARGET_COPY_OUT_VENDOR)/lib/libedmnativehelper.so \
    $(ELITELTE_VENDOR_PATH)/lib/libpower.so:$(TARGET_COPY_OUT_VENDOR)/lib/libpower.so \
    $(ELITELTE_VENDOR_PATH)/lib/librmnetctl.so:$(TARGET_COPY_OUT_VENDOR)/lib/librmnetctl.so \
    $(ELITELTE_VENDOR_PATH)/lib/libsecnativefeature.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsecnativefeature.so \
    $(ELITELTE_VENDOR_PATH)/lib/libsec-ril.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsec-ril.so \
    $(ELITELTE_VENDOR_PATH)/lib/libprotobuf-sec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libprotobuf-sec.so \
    $(ELITELTE_VENDOR_PATH)/lib/libsamsungRecord.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsamsungRecord.so \
    $(ELITELTE_VENDOR_PATH)/lib/libsamsungRecord_ns.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsamsungRecord_ns.so \
    $(ELITELTE_VENDOR_PATH)/lib/libsamsungRecord_zoom.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsamsungRecord_zoom.so \
    $(ELITELTE_VENDOR_PATH)/lib/libsamsungeffect.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsamsungeffect.so \
    $(ELITELTE_VENDOR_PATH)/lib/libsamsungSoundbooster_plus.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsamsungSoundbooster_plus.so \
    $(ELITELTE_VENDOR_PATH)/lib/libsamsungpowersound.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsamsungpowersound.so \
    $(ELITELTE_VENDOR_PATH)/lib/libsamsungearcare.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsamsungearcare.so \
    $(ELITELTE_VENDOR_PATH)/lib/libsamsungvad.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsamsungvad.so \
    $(ELITELTE_VENDOR_PATH)/lib/libsecaudioinfo.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsecaudioinfo.so \
    $(ELITELTE_VENDOR_PATH)/lib/libsecril-client.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsecril-client.so \
    $(ELITELTE_VENDOR_PATH)/lib/libsamsungVoipResampler.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsamsungVoipResampler.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libacdb-fts.so:$(TARGET_COPY_OUT_VENDOR)/lib/libacdb-fts.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libacdbloader.so:$(TARGET_COPY_OUT_VENDOR)/lib/libacdbloader.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libacdbmapper.so:$(TARGET_COPY_OUT_VENDOR)/lib/libacdbmapper.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libacdbrtac.so:$(TARGET_COPY_OUT_VENDOR)/lib/libacdbrtac.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libaudcal.so:$(TARGET_COPY_OUT_VENDOR)/lib/libaudcal.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libbtnv.so:$(TARGET_COPY_OUT_VENDOR)/lib/libbtnv.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libconfigdb.so:$(TARGET_COPY_OUT_VENDOR)/lib/libconfigdb.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libdsutils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdsutils.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libidl.so:$(TARGET_COPY_OUT_VENDOR)/lib/libidl.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libmdmdetect.so:$(TARGET_COPY_OUT_VENDOR)/lib/libmdmdetect.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libnetmgr.so:$(TARGET_COPY_OUT_VENDOR)/lib/libnetmgr.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libperipheral_client.so:$(TARGET_COPY_OUT_VENDOR)/lib/libperipheral_client.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libqcci_legacy.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqcci_legacy.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libqmi.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libqmi_cci.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi_cci.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libqmi_client_helper.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi_client_helper.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libqmi_client_qmux.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi_client_qmux.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libqmi_common_so.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi_common_so.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libqmi_csi.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi_csi.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libqmi_encdec.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmi_encdec.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libqmiservices.so:$(TARGET_COPY_OUT_VENDOR)/lib/libqmiservices.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libril-qcril-hook-oem.so:$(TARGET_COPY_OUT_VENDOR)/lib/libril-qcril-hook-oem.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libtime_genoff.so:$(TARGET_COPY_OUT_VENDOR)/lib/libtime_genoff.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libxml.so:$(TARGET_COPY_OUT_VENDOR)/lib/libxml.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/egl/eglSubDriverAndroid.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/eglSubDriverAndroid.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/egl/eglsubAndroid.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/eglsubAndroid.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/egl/libEGL_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libEGL_adreno.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/egl/libESXEGL_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libESXEGL_adreno.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/egl/libESXGLESv1_CM_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libESXGLESv1_CM_adreno.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/egl/libESXGLESv2_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libESXGLESv2_adreno.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/egl/libGLESv1_CM_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libGLESv1_CM_adreno.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/egl/libGLESv2_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libGLESv2_adreno.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/egl/libQTapGLES.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libQTapGLES.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/egl/libRBEGL_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libRBEGL_adreno.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/egl/libRBGLESv1_CM_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libRBGLESv1_CM_adreno.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/egl/libRBGLESv2_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libRBGLESv2_adreno.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/egl/libq3dtools_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libq3dtools_adreno.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/egl/libq3dtools_esx.so:$(TARGET_COPY_OUT_VENDOR)/lib/egl/libq3dtools_esx.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libC2D2.so:$(TARGET_COPY_OUT_VENDOR)/lib/libC2D2.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libCB.so:$(TARGET_COPY_OUT_VENDOR)/lib/libCB.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libOpenCL.so:$(TARGET_COPY_OUT_VENDOR)/lib/libOpenCL.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libRSDriver_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/libRSDriver_adreno.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libadreno_utils.so:$(TARGET_COPY_OUT_VENDOR)/lib/libadreno_utils.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libdiag.so:$(TARGET_COPY_OUT_VENDOR)/lib/libdiag.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libgsl.so:$(TARGET_COPY_OUT_VENDOR)/lib/libgsl.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libllvm-glnext.so:$(TARGET_COPY_OUT_VENDOR)/lib/libllvm-glnext.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libllvm-qcom.so:$(TARGET_COPY_OUT_VENDOR)/lib/libllvm-qcom.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/librs_adreno.so:$(TARGET_COPY_OUT_VENDOR)/lib/librs_adreno.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/librs_adreno_sha1.so:$(TARGET_COPY_OUT_VENDOR)/lib/librs_adreno_sha1.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libsc-a3xx.so:$(TARGET_COPY_OUT_VENDOR)/lib/libsc-a3xx.so \
    $(ELITELTE_VENDOR_PATH)/vendor/lib/libscalar.so:$(TARGET_COPY_OUT_VENDOR)/lib/libscalar.so \
    $(ELITELTE_VENDOR_PATH)/etc/firmware/a300_pfp.fw:system/etc/firmware/a300_pfp.fw \
    $(ELITELTE_VENDOR_PATH)/etc/firmware/a300_pm4.fw:system/etc/firmware/a300_pm4.fw \
    $(ELITELTE_VENDOR_PATH)/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    $(ELITELTE_VENDOR_PATH)/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw

# Oreo CAF MSM8937 media profiles/codecs. These expose the same 1080p30 H.264
# hardware encoder class as stock, while matching the LineageOS 15.1 media stack.
PRODUCT_COPY_FILES += \
    hardware/qcom/media/msm8998/conf_files/msm8937/media_codecs_8937.xml:system/etc/media_codecs.xml \
    hardware/qcom/media/msm8998/conf_files/msm8937/media_codecs_performance_8937.xml:system/etc/media_codecs_performance.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    vendor/samsung/elitelte/configs/media_profiles.xml:system/etc/media_profiles.xml \
    hardware/qcom/media/msm8998/conf_files/msm8937/media_codecs_8937.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    hardware/qcom/media/msm8998/conf_files/msm8937/media_codecs_performance_8937.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    vendor/samsung/elitelte/configs/media_profiles.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles.xml
