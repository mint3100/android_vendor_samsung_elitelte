# android_vendor_samsung_elitelte

Shared proprietary vendor files for Samsung Galaxy Folder2 elitelte variants on
LineageOS 15.1.

## Scope

This repository carries a curated Android 8.1 bring-up blob set for the common
`elitelte` device tree.  The current files are based on the available KOR
SM-G160N stock dump, with reusable Qualcomm/Samsung blobs installed through
`elitelte-vendor.mk`.

CHN/HK SM-G1650 support should stay in this repository, but CHN-only blobs
should be added deliberately after comparing a CHN stock dump or a real device
log.  Avoid copying a full stock `/system` dump into the product image.

## Source Layout

```text
device/samsung/elitelte
vendor/samsung/elitelte
kernel/samsung/msm8917_elitelte
```

## Notes

- Target Android version: LineageOS 15.1 / Android 8.1.
- Vendor install path: `$(TARGET_COPY_OUT_VENDOR)`, currently `system/vendor`.
- Display HAL modules are built from source in the device tree; Adreno EGL/GLES
  blobs are kept for hardware rendering.
- Add new blobs only when a boot log or HAL failure proves they are needed.

## Legal Notice

The proprietary files in this repository are redistributed only for device
porting, repair, and compatibility work. All proprietary binaries remain the
property of their respective owners.
