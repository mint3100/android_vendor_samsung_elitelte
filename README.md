# android_vendor_samsung_elitelte_kor

Proprietary vendor files for the Korean Samsung Galaxy Folder2
(`elitelte_kor`, SM-G160N) LineageOS 15.1.

## Scope

This repository carries a curated blob set for the Android 8.1 device tree.
The previous broad stock dump copied hundreds of Android 6.0 files into the
build, including files already produced by LineageOS/AOSP. That caused
duplicate install rules for platform files such as generic Bluetooth,
keystore, GLES, ClearKey DRM, and Bluetooth config outputs.

The current vendor list follows the conservative style used by similar Samsung
MSM8937 devices: add only blobs that are known to be needed, then grow the
list from logs.

## Included Blobs

```text
proprietary/bin/mm-qcamera-daemon
proprietary/lib/hw/sensors.msm8937.so
proprietary/vendor/lib/libmmcamera2_sensor_modules.so
```

These are installed through:

```text
elitelte_kor-vendor.mk
```

## Source Layout

```text
device/samsung/elitelte_kor
vendor/samsung/elitelte_kor
kernel/samsung/msm8917_elitelte_kor
```

## Notes

- Target device: Samsung Galaxy Folder2 SM-G160N (`elitelte_kor`)
- Target Android version: LineageOS 15.1 / Android 8.1
- Vendor install path: `$(TARGET_COPY_OUT_VENDOR)`, currently `system/vendor`
- Do not re-add full stock `/system`, `/system/lib`, or `/system/vendor` dumps.
- Add new blobs only when a boot log or HAL failure proves they are needed.

## Legal Notice

The proprietary files in this repository are redistributed only for device
porting, repair, and compatibility work. All proprietary binaries remain the
property of their respective owners.
