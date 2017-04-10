################################################################################
#
# python-uvloop
#
################################################################################

PYTHON_UVLOOP_VERSION = 0.8.0
PYTHON_UVLOOP_SOURCE = uvloop-$(PYTHON_UVLOOP_VERSION).tar.gz
PYTHON_UVLOOP_SITE = https://pypi.python.org/packages/30/d4/3a85abecaea42c1ca4d2a23c62fe2b94017370c99abec38f6d70b38d0e9f
PYTHON_UVLOOP_SETUP_TYPE = setuptools
PYTHON_UVLOOP_LICENSE = Apache-2.0 or MIT
PYTHON_UVLOOP_LICENSE_FILES = LICENSE-APACHE LICENSE-MIT
PYTHON_UVLOOP_DEPENDENCIES += host-python-cython
PYTHON_UVLOOP_DEPENDENCIES += libuv

$(eval $(python-package))

