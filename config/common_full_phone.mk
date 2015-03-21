# Inherit common CRDROID stuff
$(call inherit-product, vendor/crdroid/config/common_full.mk)

# Default notification/alarm sounds
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.notification_sound=Argon.ogg \
    ro.config.alarm_alert=Helium.ogg

ifeq ($(TARGET_SCREEN_WIDTH) $(TARGET_SCREEN_HEIGHT),$(space))
    PRODUCT_COPY_FILES += \
#        vendor/crdroid/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip
         vendor/crdroid/prebuilt/common/bootanimation/bootanimation.zip:system/media/bootanimation.zip
endif

$(call inherit-product, vendor/crdroid/config/telephony.mk)
