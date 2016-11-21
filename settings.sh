################################################################################
# setup Xilinx Vivado FPGA tools
################################################################################

. /opt/Xilinx/Vivado/2017.2/settings64.sh

################################################################################
# setup cross compiler toolchain
################################################################################

export TOOLCHAIN_PATH=/opt/gcc-linaro-7.2.1-2017.11-x86_64_arm-linux-gnueabihf
export CROSS_COMPILE=arm-linux-gnueabihf-
