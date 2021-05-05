# Copyright (C) 2020 The Proton AOSP Project
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

# Include Android 9 Material sounds instead of default AOSP ones
$(call inherit-product, frameworks/base/data/sounds/AudioPackage14.mk)

# Add 2019 Material product sounds (CC-BY 4.0)
# Sourced from https://material.io/design/sound/sound-resources.html
LOCAL_PATH := vendor/colt/audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/alarms/material_gentle.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms/material_gentle.ogg \
    $(LOCAL_PATH)/notifications/material_ambient.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_ambient.ogg \
    $(LOCAL_PATH)/notifications/material_decorative_1.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_decorative_1.ogg \
    $(LOCAL_PATH)/notifications/material_decorative_2.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_decorative_2.ogg \
    $(LOCAL_PATH)/notifications/material_decorative-celebration_1.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_decorative-celebration_1.ogg \
    $(LOCAL_PATH)/notifications/material_decorative-celebration_2.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_decorative-celebration_2.ogg \
    $(LOCAL_PATH)/notifications/material_decorative-celebration_3.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_decorative-celebration_3.ogg \
    $(LOCAL_PATH)/notifications/material_high-intensity-alert.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_high-intensity-alert.ogg \
    $(LOCAL_PATH)/notifications/material_high-intensity.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_high-intensity.ogg \
    $(LOCAL_PATH)/notifications/material_simple_1.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_simple_1.ogg \
    $(LOCAL_PATH)/notifications/material_simple_2.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_simple_2.ogg \
    $(LOCAL_PATH)/notifications/material_simple-alert.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_simple-alert.ogg \
    $(LOCAL_PATH)/notifications/material_simple-celebration_1.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_simple-celebration_1.ogg \
    $(LOCAL_PATH)/notifications/material_simple-celebration_2.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_simple-celebration_2.ogg \
    $(LOCAL_PATH)/notifications/material_simple-celebration_3.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications/material_simple-celebration_3.ogg \
    $(LOCAL_PATH)/ringtones/material_minimal.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones/material_minimal.ogg \
    $(LOCAL_PATH)/ui/audio_end.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/audio_end.ogg \
    $(LOCAL_PATH)/ui/audio_initiate.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/audio_initiate.ogg \
    $(LOCAL_PATH)/ui/camera_click.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/camera_click.ogg \
    $(LOCAL_PATH)/ui/camera_focus.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/camera_focus.ogg \
    $(LOCAL_PATH)/ui/ChargingStarted.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/ChargingStarted.ogg \
    $(LOCAL_PATH)/ui/Dock.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Dock.ogg \
    $(LOCAL_PATH)/ui/Effect_Tick.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Effect_Tick.ogg \
    $(LOCAL_PATH)/ui/InCallNotification.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/InCallNotification.ogg \
    $(LOCAL_PATH)/ui/KeypressDelete.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/KeypressDelete.ogg \
    $(LOCAL_PATH)/ui/KeypressInvalid.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/KeypressInvalid.ogg \
    $(LOCAL_PATH)/ui/KeypressReturn.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/KeypressReturn.ogg \
    $(LOCAL_PATH)/ui/KeypressSpacebar.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/KeypressSpacebar.ogg \
    $(LOCAL_PATH)/ui/KeypressStandard.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/KeypressStandard.ogg \
    $(LOCAL_PATH)/ui/Lock.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Lock.ogg \
    $(LOCAL_PATH)/ui/LowBattery.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/LowBattery.ogg \
    $(LOCAL_PATH)/ui/NFCFailure.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/NFCFailure.ogg \
    $(LOCAL_PATH)/ui/NFCInitiated.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/NFCInitiated.ogg \
    $(LOCAL_PATH)/ui/NFCSuccess.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/NFCSuccess.ogg \
    $(LOCAL_PATH)/ui/NFCTransferComplete.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/NFCTransferComplete.ogg \
    $(LOCAL_PATH)/ui/NFCTransferInitiated.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/NFCTransferInitiated.ogg \
    $(LOCAL_PATH)/ui/Trusted.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Trusted.ogg \
    $(LOCAL_PATH)/ui/Undock.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Undock.ogg \
    $(LOCAL_PATH)/ui/Unlock.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/Unlock.ogg \
    $(LOCAL_PATH)/ui/VideoRecord.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/VideoRecord.ogg \
    $(LOCAL_PATH)/ui/VideoStop.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/VideoStop.ogg \
    $(LOCAL_PATH)/ui/WirelessChargingStarted.ogg:$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui/WirelessChargingStarted.ogg


# Use Material product sounds by default
PRODUCT_PRODUCT_PROPERTIES += \
    ro.config.ringtone=material_minimal.ogg \
    ro.config.alarm_alert=material_gentle.ogg \
    ro.config.notification_sound=material_simple_1.ogg \
