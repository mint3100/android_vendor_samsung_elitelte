# android_vendor_samsung_elitelte_kor

Proprietary vendor files for the Korean Samsung Galaxy Folder2
(`elitelte_kor`, SM-G160N) LineageOS 15.1.

## Scope

This repository carries a curated blob set for the Android 8.1 device tree.
The previous broad stock dump copied hundreds of Android 6.0 files into the
build, including files already produced by LineageOS/AOSP. That caused
duplicate install rules for platform files such as generic Bluetooth,
keystore, GLES, ClearKey DRM, and Bluetooth config outputs.

The current vendor list is intentionally minimal. Marshmallow display, EGL,
camera, and sensor blobs are kept in the repository for later subsystem work,
but they are not installed into the product image during first-boot bring-up.
The base system should reach adb using LineageOS/AOSP generic HALs and software
rendering before old proprietary HALs are added back one subsystem at a time.

## Included Blobs

No proprietary Marshmallow blobs are installed by the current product makefile.
Only the framework-built `libtinyxml` package is requested by:

```text
elitelte_kor-vendor.mk
```

This keeps stale Android 6.0 HALs from being loaded accidentally while init,
USB, adbd, zygote, and software rendering are being stabilized.

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
