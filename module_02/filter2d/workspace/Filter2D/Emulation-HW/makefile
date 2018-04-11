#
# this file was created by a computer. trust it.
#

# compiler tools
XILINX_VIVADO_HLS ?= $(XILINX_SDX)/Vivado_HLS

SDX_CXX ?= $(XILINX_SDX)/bin/xcpp
XOCC ?= $(XILINX_SDX)/bin/xocc
EMCONFIGUTIL = $(XILINX_SDX)/bin/emconfigutil --od .
RM = rm -f
RMDIR = rm -rf

SDX_PLATFORM = xilinx:aws-vu9p-f1:4ddr-xpr-2pr:4.0

# host compiler global settings
CXXFLAGS += -DC_KERNEL -DSDX_PLATFORM=$(SDX_PLATFORM) -D__USE_XOPEN2K8 -I/proj/xbuilds/2017.1_sdx_0715_1/installs/lin64/SDx/2017.1/runtime/include/1_2/ -I/proj/xbuilds/2017.1_sdx_0715_1/installs/lin64/SDx/2017.1/Vivado_HLS/include/ -O0 -g -Wall -c -fmessage-length=0 -std=c++14
LDFLAGS += -lxilinxopencl -lpthread -lrt -lstdc++ -L/proj/xbuilds/2017.1_sdx_0715_1/installs/lin64/SDx/2017.1/runtime/lib/x86_64

# kernel compiler global settings
XOCC_OPTS = -t hw_emu --platform $(SDX_PLATFORM) --save-temps  --report estimate

#
# OpenCL kernel files
#

BINARY_CONTAINERS += binary_container_1.xclbin

BUILD_SUBDIRS += binary_container_1
BINARY_CONTAINER_1_OBJS += binary_container_1/Filter2DKernel.xo
ALL_KERNEL_OBJS += binary_container_1/Filter2DKernel.xo

ALL_MESSAGE_FILES = $(subst .xo,.mdb,$(ALL_KERNEL_OBJS)) $(subst .xclbin,.mdb,$(BINARY_CONTAINERS))

#
# host files
#

HOST_OBJECTS += src/host/cmdlineparser.o
HOST_OBJECTS += src/host/filter2d.o
HOST_OBJECTS += src/host/host.o
HOST_OBJECTS += src/host/logger.o
HOST_OBJECTS += src/host/xclbin_helper.o

HOST_EXE = Filter2D.exe

BUILD_SUBDIRS += src/host/

EMCONFIG_FILE = emconfig.json

#
# primary build targets
#

.PHONY: all clean
all: $(BINARY_CONTAINERS) $(HOST_EXE) $(EMCONFIG_FILE) hlsannofiles.txt

clean:
	-$(RM) $(BINARY_CONTAINERS) $(ALL_KERNEL_OBJS) $(ALL_MESSAGE_FILES) $(EMCONFIG_FILE) $(HOST_EXE) $(HOST_OBJECTS)
	-$(RMDIR) $(BUILD_SUBDIRS)
	-$(RMDIR) _xocc*
	-$(RMDIR) .Xil

.PHONY: incremental
incremental: all

include makeemconfig.mk

#
# binary container: binary_container_1.xclbin
#

binary_container_1/Filter2DKernel.xo: ../src/kernel/filter2d.cpp ../src/kernel/axi2stream.cpp
	@mkdir -p $(@D)
	-@$(RM) $@
	$(XOCC) $(XOCC_OPTS) -c -k Filter2DKernel -g --messageDb $(subst .xo,.mdb,$@) -I"$(<D)" --xp misc:solution_name=_xocc_compile_binary_container_1_Filter2DKernel -o"$@" "$<" "../src/kernel/axi2stream.cpp"
	-@$(RMDIR) .Xil

binary_container_1.xclbin: $(BINARY_CONTAINER_1_OBJS)
	$(XOCC) $(XOCC_OPTS) -l --nk Filter2DKernel:1 -g --messageDb $(subst .xclbin,.mdb,$@) --xp misc:solution_name=_xocc_link_binary_container_1 -o"$@" $(+)
	-@$(RMDIR) .Xil

#
# report file processing
#

hlsannofiles.txt: $(ALL_KERNEL_OBJS)
	$(XILINX_SDX)/bin/hlsannoutil

#
# host rules
#

src/host/cmdlineparser.o: ../src/host/cmdlineparser.cpp ../src/host/cmdlineparser.h ../src/host/logger.h
	@mkdir -p $(@D)
	$(SDX_CXX) $(CXXFLAGS) -o "$@" "$<" -fopenmp

src/host/filter2d.o: ../src/host/filter2d.cpp ../src/host/filter2d.h ../src/host/window2d.h
	@mkdir -p $(@D)
	$(SDX_CXX) $(CXXFLAGS) -o "$@" "$<" -fopenmp

src/host/host.o: ../src/host/host.cpp ../src/host/logger.h ../src/host/cmdlineparser.h ../src/host/xclbin_helper.h ../../../../../../../../../../proj/xbuilds/released/2017.1_sdx/AWS/2017.1_sdx_0715_1/installs/lin64/SDx/2017.1/Vivado_HLS/include/opencv2/opencv.hpp ../src/host/coefficients.h ../src/host/filter2d.h
	@mkdir -p $(@D)
	$(SDX_CXX) $(CXXFLAGS) -o "$@" "$<" -fopenmp

src/host/logger.o: ../src/host/logger.cpp ../src/host/logger.h
	@mkdir -p $(@D)
	$(SDX_CXX) $(CXXFLAGS) -o "$@" "$<" -fopenmp

src/host/xclbin_helper.o: ../src/host/xclbin_helper.cpp ../src/host/xclbin_helper.h
	@mkdir -p $(@D)
	$(SDX_CXX) $(CXXFLAGS) -o "$@" "$<" -fopenmp

$(HOST_EXE): $(HOST_OBJECTS)
	$(SDX_CXX) -o "$@" $(+) $(LDFLAGS) -fopenmp -Wl,--as-needed -Wl,-rpath,$(XILINX_SDX)/lnx64/tools/opencv -L$(XILINX_SDX)/lnx64/tools/opencv -lopencv_calib3d -lopencv_contrib -lopencv_core -lopencv_features2d -lopencv_flann -lopencv_gpu -lopencv_highgui -lopencv_imgproc -lopencv_legacy -lopencv_ml -lopencv_objdetect -lopencv_photo -lopencv_stitching -lopencv_superres -lopencv_ts -lopencv_video -lopencv_videostab

#
# emulation configuration file
#

$(EMCONFIG_FILE): makeemconfig.mk
	$(EMCONFIGUTIL) --platform xilinx:aws-vu9p-f1:4ddr-xpr-2pr:4.0 --nd $(NUMBER_OF_DEVICES)
	-@$(RMDIR) TempConfig .Xil

