################################################################################
#
# python-uvloop
#
################################################################################

PYTHON_UVLOOP_VERSION = 0.9.0
PYTHON_UVLOOP_SOURCE = uvloop-$(PYTHON_UVLOOP_VERSION).tar.gz
PYTHON_UVLOOP_SITE = https://pypi.python.org/packages/2f/d2/ace6713b6ec2aed8a6d6732dc29613b26ae8c0676b57713f92fda8045579
PYTHON_UVLOOP_SETUP_TYPE = setuptools
PYTHON_UVLOOP_LICENSE = Apache-2.0 or MIT
PYTHON_UVLOOP_LICENSE_FILES = LICENSE-APACHE LICENSE-MIT
PYTHON_UVLOOP_DEPENDENCIES += host-python-cython
PYTHON_UVLOOP_DEPENDENCIES += libuv

$(eval $(python-package))

