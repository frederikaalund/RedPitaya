################################################################################
# setup Xilinx Vivado FPGA tools
################################################################################

#. /opt/Xilinx/Vivado/2016.2/settings64.sh
#. /opt/Xilinx/SDK/2016.2/settings64.sh

################################################################################
# setup cross compiler toolchain
################################################################################

export TOOLCHAIN_PATH=/opt/gcc-linaro-6.3.1-2017.02-x86_64_arm-linux-gnueabihf
export PATH=$PATH:$TOOLCHAIN_PATH/bin
export CROSS_COMPILE=arm-linux-gnueabihf-

################################################################################
# setup download cache directory, to avoid downloads
################################################################################

export DL=dl

################################################################################
# common make procedure, should not be run by this script
################################################################################

#GIT_COMMIT_SHORT=`git rev-parse --short HEAD`
#make REVISION=$GIT_COMMIT_SHORT
