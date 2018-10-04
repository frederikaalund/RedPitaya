################################################################################
#
# python-py-spy
#
################################################################################

PYTHON_PY_SPY_VERSION = v0.1.8
PYTHON_PY_SPY_SITE = $(call github,benfred,py-spy,$(PYTHON_PY_SPY_VERSION))
PYTHON_PY_SPY_SETUP_TYPE = setuptools
PYTHON_PY_SPY_LICENSE = GPL-3.0
PYTHON_PY_SPY_LICENSE_FILES = LICENSE
PYTHON_PY_SPY_DEPENDENCIES += host-rustc
PYTHON_PY_SPY_DEPENDENCIES += host-cargo
PYTHON_PY_SPY_ENV = PYSPY_CROSS_COMPILE_TARGET=armv7-unknown-linux-gnueabihf

$(eval $(python-package))
