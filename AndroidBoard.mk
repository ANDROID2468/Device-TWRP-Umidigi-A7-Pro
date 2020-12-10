LOCAL_PATH := device/umidigi/A7_pro

ifneq ($(filter A7_pro,$(TARGET_DEVICE)),)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
