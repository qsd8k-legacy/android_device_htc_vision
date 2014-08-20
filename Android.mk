ifneq ($(filter vision,$(TARGET_DEVICE)),)
    include $(all-subdir-makefiles)
endif
