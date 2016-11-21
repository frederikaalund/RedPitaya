################################################################################
#
# python-rxpy
#
################################################################################

PYTHON_RXPY_VERSION = c58639bbb23755b6973c9183bae99564e12d8200
PYTHON_RXPY_SITE = $(call github,ReactiveX,RxPY,$(PYTHON_RXPY_VERSION))
PYTHON_RXPY_SETUP_TYPE = setuptools
PYTHON_RXPY_LICENSE = Apache-2.0
PYTHON_RXPY_LICENSE_FILES = LICENSE

$(eval $(python-package))
