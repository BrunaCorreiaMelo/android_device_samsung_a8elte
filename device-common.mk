DEVICE_PACKAGE_OVERLAYS += device/samsung/a8elte/overlay

LOCAL_PATH := device/samsung/a8elte

###########################################################
### RAMDISK
###########################################################

PRODUCT_PACKAGES += \
    fstab.universal5430 \
    init.samsung.rc \
    init.universal5430.rc \
    init.universal5430.usb.rc \
    init.universal5430.wifi.rc \
    ueventd.universal5430.rc

###########################################################
### PERMISSONS
###########################################################

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.consumerir.xml:system/etc/permissions/android.hardware.consumerir.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

###########################################################
### GRAPHICS
###########################################################

PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=196608

PRODUCT_PACKAGES += \
	libion_exynos \
	gralloc.exynos5 \
	hwcomposer.exynos5

###########################################################
### RADIO
###########################################################

PRODUCT_PACKAGES += \
    libsecril-client \
    libsecril-client-sap \
    modemloader

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libargs=-d /dev/ttyS0 \
    rild.libpath=/system/lib/libsec-ril.so \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.telephony.ril_class=SlteRIL \
    ro.ril.telephony.mqanelements=5

###########################################################
### WIFI
###########################################################

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
	$(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

PRODUCT_PROPERTY_OVERRIDES += \
	wifi.interface=wlan0

PRODUCT_PACKAGES += \
	libnetcmdiface \
	macloader \
	wifiloader \
	hostapd \
	libwpa_client \
	wpa_supplicant

# hardware/broadcom/wlan/bcmdhd/config/Android.mk
PRODUCT_PACKAGES += \
	dhcpcd.conf

# external/wpa_supplicant_8/wpa_supplicant/wpa_supplicant_conf.mk
PRODUCT_PACKAGES += \
	wpa_supplicant.conf

###########################################################
### BLUETOOTH
###########################################################
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
	$(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

###########################################################
### AUDIO
###########################################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/configs/audio/mixer_paths.xml:system/etc/mixer_paths.xml

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    audio.primary.universal5430

PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio_hal.force_voice_config=wide

###########################################################
### OMX/MEDIA
###########################################################

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml  \
    $(LOCAL_PATH)/configs/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media/media_profiles.xml:system/etc/media_profiles.xml

###########################################################
### POWER
###########################################################

PRODUCT_PACKAGES += \
    power.universal5430

###########################################################
### LIGHTS
###########################################################

PRODUCT_PACKAGES += \
    lights.universal5430

###########################################################
### GPS
###########################################################

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/gps/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/configs/gps/gps.xml:system/etc/gps.xml

PRODUCT_PACKAGES += \
    libdmitry

###########################################################
### CAMERA
###########################################################

PRODUCT_PACKAGES += \
	Snap

PRODUCT_PACKAGES += \
	libhwjpeg \
	libsamsung_symbols \
	libdmitry

# This fixes switching between front/back camera sensors
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

###########################################################
### TOUCHSCREEN
###########################################################

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/configs/idc/Synaptics_HID_TouchPad.idc:/system/usr/idc/Synaptics_HID_TouchPad.idc \
	$(LOCAL_PATH)/configs/keylayout/gpio_keys_8.kl:/system/usr/keylayout/gpio_keys_8.kl \
	$(LOCAL_PATH)/configs/keylayout/sec_touchkey.kl:/system/usr/keylayout/sec_touchkey.kl


###########################################################
### CHARGER
###########################################################

PRODUCT_PACKAGES += \
	charger_res_images \
	charger

###########################################################
### MTP
###########################################################

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

###########################################################
### MOBICORE
###########################################################

PRODUCT_PACKAGES += \
	mcDriverDaemon \
        stlport \
	keystore.exynos5

###########################################################
### PACKAGES
###########################################################

PRODUCT_PACKAGES += \
	SamsungServiceMode \
	Torch

###########################################################
### SYMBOLS FOR BLOBS
###########################################################

PRODUCT_PACKAGES += \
    libsamsung_symbols

###########################################################
### DEFAULT PROPS
###########################################################

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.debug_level=0x4948

###########################################################
### DALVIK/ART
###########################################################

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.sys.fw.dex2oat_thread_count=4

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m

###########################################################
### HWUI
###########################################################

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=88 \
    ro.hwui.layer_cache_size=58 \
    ro.hwui.path_cache_size=32 \
    ro.hwui.shape_cache_size=4 \
    ro.hwui.gradient_cache_size=2 \
    ro.hwui.drop_shadow_cache_size=8 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.text_small_cache_width=2048 \
    ro.hwui.text_small_cache_height=2048 \
    ro.hwui.text_large_cache_width=4096 \
    ro.hwui.text_large_cache_height=4096

PRODUCT_NAME := full_a8elte
PRODUCT_DEVICE := a8eltegpi

# call Samsung LSI board support package
$(call inherit-product, hardware/samsung_slsi-cm/exynos5/exynos5.mk)
$(call inherit-product, hardware/samsung_slsi-cm/exynos5430/exynos5430.mk)

# call the proprietary setup
$(call inherit-product-if-exists, vendor/samsung/a8elte/a8elte-vendor.mk)
