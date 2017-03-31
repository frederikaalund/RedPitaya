################################################################################
#
# python-async_timeout
#
################################################################################

PYTHON_ASYNC_TIMEOUT_VERSION = 5cc2db723d082494ca5d008f21734fd7c9ff7423
PYTHON_ASYNC_TIMEOUT_SITE = $(call github,frederikaalund,async_timeout,$(PYTHON_ASYNC_TIMEOUT_VERSION))
#PYTHON_ASYNC_TIMEOUT_VERSION = 1.2.0
#PYTHON_ASYNC_TIMEOUT_SITE = $(call github,aio-libs,async_timeout,$(PYTHON_ASYNC_TIMEOUT_VERSION))
PYTHON_ASYNC_TIMEOUT_SETUP_TYPE = setuptools
PYTHON_ASYNC_TIMEOUT_LICENSE = Apache-2.0
PYTHON_ASYNC_TIMEOUT_LICENSE_FILES = LICENSE

$(eval $(python-package))
