
KERNEL  	    = Filter2DKernel
NKERNEL 	    = 3
DEVICE  	    = xilinx_aws-vu9p-f1_4ddr-xpr-2pr_4_0
#PLATFORM	    = ${DEVICE}
PLATFORM 	    = ${AWS_PLATFORM}

APP_SOURCE_FILES    = ./workspace/Filter2D/src/host/*.cpp 
APP_HEADER_FILES    = ./workspace/Filter2D/src/host/*.h 
KERNEL_SOURCE_FILES = ./workspace/Filter2D/src/kernel/*.cpp
KERNEL_HEADER_FILES = ./workspace/Filter2D/src/kernel/*.h

sw_emu_XOCC_OPTIONS = -O3 -I./workspace/Filter2D/src/kernel
hw_emu_XOCC_OPTIONS = --debug

APP 				= Filter2D.exe

# -----------------------------------------------------------------------------

XO_FILE	= xclbin/${KERNEL}.${TARGET}.${DEVICE}.xo
XCLBIN_FILE = xclbin/fpga.${NKERNEL}k.${TARGET}.${DEVICE}.xclbin

# -----------------------------------------------------------------------------

# Compile and build the host application (.exe file)
${APP}: ${APP_SOURCE_FILES} ${APP_HEADER_FILES}
	xcpp -O3 -fopenmp -o $@ ${APP_SOURCE_FILES} \
	-I${XILINX_SDX}/include -I${XILINX_SDX}/runtime/include/1_2 -L${XILINX_SDX}/runtime/lib/x86_64 -L${XILINX_SDX}/lib/lnx64.o -lOpenCL -pthread \
	-Wl,--as-needed \
	-Wl,-rpath,${XILINX_SDX}/lnx64/tools/opencv -L${XILINX_SDX}/lnx64/tools/opencv -lopencv_calib3d -lopencv_contrib -lopencv_core -lopencv_features2d -lopencv_flann -lopencv_gpu -lopencv_highgui -lopencv_imgproc -lopencv_legacy -lopencv_ml -lopencv_objdetect -lopencv_photo -lopencv_stitching -lopencv_superres -lopencv_ts -lopencv_video -lopencv_videostab

# Compile the kernel (.xo file)
${XO_FILE}: ${KERNEL_SOURCE_FILES} ${KERNEL_HEADER_FILES}
	mkdir -p xclbin
	xocc -c -t ${TARGET} ${${TARGET}_XOCC_OPTIONS} -s --platform ${PLATFORM} -k ${KERNEL} ${KERNEL_SOURCE_FILES} -o $@ \
	--xp "param:compiler.preserveHlsOutput=1" --xp "param:compiler.generateExtraRunData=true"

# Link the FPGA binary (.xclbin file)
${XCLBIN_FILE}: ${XO_FILE}
	xocc -l -t ${TARGET} ${${TARGET}_XOCC_OPTIONS} --nk ${KERNEL}:${NKERNEL} -s --platform ${PLATFORM} $<  -o $@ \
	--xp "param:compiler.preserveHlsOutput=1" --xp "param:compiler.generateExtraRunData=true"

# Build both the host application and XCLBIN
build: ${XCLBIN_FILE} ${APP} 

# Execute the accelerated application
check: ${XCLBIN_FILE} emconfig.json ${APP} 
	XCL_EMULATION_MODE=${TARGET} ./${APP} -x ${XCLBIN_FILE} -i ./img/test.bmp

# Create the emulation config file
emconfig.json:
	emconfigutil --platform ${PLATFORM} --nd 1

# -------------------------------------------------

sw_emu:
	make check TARGET=sw_emu 

hw_emu:
	make check TARGET=hw_emu

hw:
	make build TARGET=hw

all:
	make build  NKERNEL=1 TARGET=sw_emu
	make build  NKERNEL=3 TARGET=sw_emu
	make build  NKERNEL=6 TARGET=sw_emu	
	make build  NKERNEL=1 TARGET=hw_emu
	make build  NKERNEL=3 TARGET=hw_emu
	make build  NKERNEL=6 TARGET=hw_emu
	make build  NKERNEL=1 TARGET=hw
	make build  NKERNEL=3 TARGET=hw
	make build  NKERNEL=6 TARGET=hw

# -------------------------------------------------

profile:
	sda2protobuf sdaccel_profile_summary.csv
	sda2wdb sdaccel_timeline_trace.csv	

# -------------------------------------------------

clean:
	rm -rf ${APP} sdaccel_* emconfig.json emulation* xsim* *.wcfg *.wdb .Xil prj sdx_* *.log
	
emuclean: clean
	rm -rf xclbin/*emu*
