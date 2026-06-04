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
# Keep this list deliberately small. Android 8.1 / LineageOS already builds
# the generic HALs and framework libraries; copying a broad Marshmallow stock
# dump here can override platform outputs and break early boot.

PRODUCT_COPY_FILES += \
    vendor/samsung/elitelte_kor/proprietary/bin/mm-qcamera-daemon:$(TARGET_COPY_OUT_VENDOR)/bin/mm-qcamera-daemon \
    vendor/samsung/elitelte_kor/proprietary/lib/hw/sensors.msm8937.so:$(TARGET_COPY_OUT_VENDOR)/lib/hw/sensors.msm8937.so \
    vendor/samsung/elitelte_kor/proprietary/vendor/lib/libmmcamera2_sensor_modules.so:$(TARGET_COPY_OUT_VENDOR)/lib/libmmcamera2_sensor_modules.so
