################################################################################
#
# python-rxpy
#
################################################################################

PYTHON_RXPY_VERSION = v1.5.9
PYTHON_RXPY_SITE = $(call github,ReactiveX,RxPY,$(PYTHON_RXPY_VERSION))
PYTHON_RXPY_SETUP_TYPE = setuptools
PYTHON_RXPY_LICENSE = Apache-2.0
PYTHON_RXPY_LICENSE_FILES = LICENSE

$(eval $(python-package))
