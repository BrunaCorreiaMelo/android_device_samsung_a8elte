<b>HOW DO I COMPILE ?</b>

Type this commands 

`cd`

`cd cm13`

`gedit .repo/local_manifests/roomservice.xml`

And paste this inside that file :-

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
<remote  name="cryptomilk" fetch="git://git.cryptomilk.org/" />
<project name="CyanogenMod/android_packages_apps_SamsungServiceMode" path="packages/apps/SamsungServiceMode" remote="github" />
<project name="CyanogenMod/android_hardware_samsung" path="hardware/samsung" remote="github" />
<project name="CyanogenMod/android_hardware_samsung_slsi-cm_exynos" path="hardware/samsung_slsi-cm/exynos" revesion="cm-13.0" />
<project name="CyanogenMod/android_hardware_samsung_slsi-cm_exynos5" path="hardware/samsung_slsi-cm/exynos5" />
<project name="CyanogenMod/android_hardware_samsung_slsi-cm_openmax" path="hardware/samsung_slsi-cm/openmax" />
<project name="projects/android/android_hardware_samsung_slsi_exynos5430" path="hardware/samsung_slsi-cm/exynos5430" remote="cryptomilk"  />
<project name="Grace5921/Kernel_samsung_a8elte" path="kernel/samsung/a8elte" remote="github" revision="cm-13.0"/>
<project name="Grace5921/android_device_samsung_a8elte" path="device/samsung/a8elte" remote="github"revision="cm-13.0" />
<project name="Grace5921/external_stlport.git" path="external/stlport" remote="github" />
<project name="Grace5921/android_vendor_samsung_a8elte" path="vendorsamsung/a8elte" remote="github" revision="master" />
</manifest>
```

Then type this:-

  `repo sync`

 `. build/envsetup.sh`
 
 `brunch a8elte`

