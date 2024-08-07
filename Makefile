# Project Name
TARGET = MultiEffect

USE_DAISYSP_LGPL = 1

# Library Locations
LIBDAISY_DIR = ../../libDaisy
DAISYSP_DIR = ../../DaisySP
CMSIS_DIR = $(LIBDAISY_DIR)/Drivers/CMSIS

# Sources
CPP_SOURCES = MultiEffect.cpp

# Core location, and generic Makefile.
SYSTEM_FILES_DIR = $(LIBDAISY_DIR)/core
include $(SYSTEM_FILES_DIR)/Makefile
