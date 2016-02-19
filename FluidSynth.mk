LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE   := fluidsynth

FLUIDSYNTH_DIR := $(LOCAL_PATH)/fluidsynth
FLUIDSYNTH_SRC_DIR := $(FLUIDSYNTH_DIR)/src

LOCAL_C_INCLUDES := $(FLUIDSYNTH_DIR)/include $(FLUIDSYNTH_DIR)/src/utils $(FLUIDSYNTH_DIR)
LOCAL_C_INCLUDES += $(FLUIDSYNTH_DIR)/src/synth $(FLUIDSYNTH_DIR)/src/midi $(FLUIDSYNTH_DIR)/src/rvoice $(FLUIDSYNTH_DIR)/src/sfloader $(FLUIDSYNTH_DIR)/src/bindings $(FLUIDSYNTH_DIR)/src/drivers
LOCAL_C_INCLUDES += $(LOCAL_PATH)/glib-2.0/android $$(LOCAL_PATH)/glib-2.0 $(LOCAL_PATH)/glib-2.0/glib

LOCAL_CFLAGS := -DHAVE_PTHREAD_H -DHAVE_STDLIB_H -DHAVE_STDIO_H -DHAVE_MATH_H -DHAVE_STRING_H -DHAVE_STDARG_H -DHAVE_SYS_SOCKET_H -DHAVE_NETINET_IN_H -DHAVE_ARPA_INET_H -DHAVE_NETINET_TCP_H -DHAVE_UNISTD_H -DHAVE_ERRNO_H -DHAVE_FCNTL_H -DVERSION=1.0.9 -O3

LOCAL_CPPFLAGS := $(LOCAL_CFLAGS)

# makefile kara nuki
# $(FLUIDSYNTH_SRC_DIR)/bindings/fluid_lash.c
# $(FLUIDSYNTH_SRC_DIR)/drivers/fluid_dsound.c
# $(FLUIDSYNTH_SRC_DIR)/drivers/fluid_jack.c
# $(FLUIDSYNTH_SRC_DIR)/drivers/fluid_pulse.c

LOCAL_SRC_FILES := \
				$(FLUIDSYNTH_SRC_DIR)/bindings/fluid_cmd.c \
				$(FLUIDSYNTH_SRC_DIR)/bindings/fluid_filerenderer.c \
				$(FLUIDSYNTH_SRC_DIR)/bindings/fluid_ladspa.c \
				$(FLUIDSYNTH_SRC_DIR)/bindings/fluid_rtkit.c \
				$(FLUIDSYNTH_SRC_DIR)/drivers/fluid_adriver.c \
				$(FLUIDSYNTH_SRC_DIR)/drivers/fluid_alsa.c \
				$(FLUIDSYNTH_SRC_DIR)/drivers/fluid_aufile.c \
				$(FLUIDSYNTH_SRC_DIR)/drivers/fluid_coreaudio.c \
				$(FLUIDSYNTH_SRC_DIR)/drivers/fluid_coremidi.c \
				$(FLUIDSYNTH_SRC_DIR)/drivers/fluid_dart.c \
				$(FLUIDSYNTH_SRC_DIR)/drivers/fluid_mdriver.c \
				$(FLUIDSYNTH_SRC_DIR)/drivers/fluid_midishare.c \
				$(FLUIDSYNTH_SRC_DIR)/drivers/fluid_oss.c \
				$(FLUIDSYNTH_SRC_DIR)/drivers/fluid_portaudio.c \
				$(FLUIDSYNTH_SRC_DIR)/drivers/fluid_sndmgr.c \
				$(FLUIDSYNTH_SRC_DIR)/drivers/fluid_winmidi.c \
				$(FLUIDSYNTH_SRC_DIR)/midi/fluid_midi.c \
				$(FLUIDSYNTH_SRC_DIR)/midi/fluid_midi_router.c \
				$(FLUIDSYNTH_SRC_DIR)/midi/fluid_seq.c \
				$(FLUIDSYNTH_SRC_DIR)/midi/fluid_seqbind.c \
				$(FLUIDSYNTH_SRC_DIR)/rvoice/fluid_adsr_env.c \
				$(FLUIDSYNTH_SRC_DIR)/rvoice/fluid_chorus.c \
				$(FLUIDSYNTH_SRC_DIR)/rvoice/fluid_iir_filter.c \
				$(FLUIDSYNTH_SRC_DIR)/rvoice/fluid_lfo.c \
				$(FLUIDSYNTH_SRC_DIR)/rvoice/fluid_rev.c \
				$(FLUIDSYNTH_SRC_DIR)/rvoice/fluid_rvoice.c \
				$(FLUIDSYNTH_SRC_DIR)/rvoice/fluid_rvoice_dsp.c \
				$(FLUIDSYNTH_SRC_DIR)/rvoice/fluid_rvoice_event.c \
				$(FLUIDSYNTH_SRC_DIR)/rvoice/fluid_rvoice_mixer.c \
				$(FLUIDSYNTH_SRC_DIR)/sfloader/fluid_defsfont.c \
				$(FLUIDSYNTH_SRC_DIR)/sfloader/fluid_ramsfont.c \
				$(FLUIDSYNTH_SRC_DIR)/synth/fluid_chan.c \
				$(FLUIDSYNTH_SRC_DIR)/synth/fluid_event.c \
				$(FLUIDSYNTH_SRC_DIR)/synth/fluid_gen.c \
				$(FLUIDSYNTH_SRC_DIR)/synth/fluid_mod.c \
				$(FLUIDSYNTH_SRC_DIR)/synth/fluid_synth.c \
				$(FLUIDSYNTH_SRC_DIR)/synth/fluid_tuning.c \
				$(FLUIDSYNTH_SRC_DIR)/synth/fluid_voice.c \
				$(FLUIDSYNTH_SRC_DIR)/utils/fluid_conv.c \
				$(FLUIDSYNTH_SRC_DIR)/utils/fluid_hash.c \
				$(FLUIDSYNTH_SRC_DIR)/utils/fluid_list.c \
				$(FLUIDSYNTH_SRC_DIR)/utils/fluid_ringbuffer.c \
				$(FLUIDSYNTH_SRC_DIR)/utils/fluid_settings.c \
				$(FLUIDSYNTH_SRC_DIR)/utils/fluid_sys.c \
				$(FLUIDSYNTH_SRC_DIR)/fluidsynth.c

LOCAL_LDLIBS    = -llog

LOCAL_STATIC_LIBRARIES := libglib-2.0 libgthread-2.0

include $(BUILD_SHARED_LIBRARY)
