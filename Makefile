# Project Name
TARGET = MultiEffect

USE_DAISYSP_LGPL = 1

# Library Locations
LIBDAISY_DIR = libDaisy
DAISYSP_DIR = DaisySP
CMSIS_DIR = $(LIBDAISY_DIR)/Drivers/CMSIS

.PHONY: project
project: submodules $(LIBDAISY_DIR) $(DAISYSP_DIR) all  ## all is resolved via later include

.PHONY: submodules
submodules:
	git submodule update --init --recursive

.PHONY: flash
flash: program-dfu

.PHONY: libDaisy
libDaisy:
	$(MAKE) -C $(LIBDAISY_DIR) -j

.PHONY: DaisySP
DaisySP: libDaisy
	$(MAKE) -C $(DAISYSP_DIR) -j

# Sources
CPP_SOURCES = MultiEffect.cpp

# Core location, and generic Makefile.
SYSTEM_FILES_DIR = $(LIBDAISY_DIR)/core
include $(SYSTEM_FILES_DIR)/Makefile
