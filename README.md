# android_vendor_samsung_elitelte_kor

Proprietary vendor files for the Korean Samsung Galaxy Folder2 (`elitelte_kor`, SM-G160N) used by the LineageOS 15.1 bring-up.

This repository contains the binary components that cannot be built from AOSP or LineageOS source alone. It is intended to live beside the matching device and kernel repositories in a LineageOS 15.1 source checkout.

## Vendor Summary

| Item | Value |
| --- | --- |
| Device | Samsung Galaxy Folder2 |
| Model | SM-G160N |
| Codename | `elitelte_kor` |
| Android target | LineageOS 15.1 / Android 8.1 |
| Architecture | 32-bit ARM vendor blobs |
| Install location | `system/vendor` |
| Device tree | `device/samsung/elitelte_kor` |

## Contents

This tree provides proprietary files and make rules for areas such as:

- Qualcomm graphics and EGL libraries.
- Camera sensor, chromatix, and image processing blobs.
- Audio calibration, mixer paths, and audio HAL components.
- Radio, RIL, IMS, GPS, Bluetooth, Wi-Fi, and sensor binaries.
- Firmware and vendor-side helper binaries required by the stock hardware stack.

The main makefile is:

```text
elitelte_kor-vendor.mk
```

It is inherited by the device tree and copies blobs into the expected Android 8.1 vendor locations.

## Expected Source Layout

```text
device/samsung/elitelte_kor
vendor/samsung/elitelte_kor
kernel/samsung/msm8917_elitelte_kor
```

## Build Usage

From the LineageOS 15.1 source root:

```sh
source build/envsetup.sh
lunch lineage_elitelte_kor-userdebug
mka bacon
```

The device tree includes this repository with:

```make
$(call inherit-product-if-exists, vendor/samsung/elitelte_kor/elitelte_kor-vendor.mk)
```

## Notes

- These blobs are for the Korean `elitelte_kor` target.
- The tree is arranged for Android 8.1 / LineageOS 15.1.
- The build currently uses `TARGET_COPY_OUT_VENDOR := system/vendor`, matching the legacy Oreo layout used by this bring-up.
- Keep this repository in sync with the device tree when init scripts, HAL services, or copied blob paths change.

## Legal Notice

The proprietary files in this repository are redistributed only for device bring-up, repair, and compatibility work. All proprietary binaries remain the property of their respective owners.

## Branch

Use the `lineage-15.1` branch for Android 8.1 work.
