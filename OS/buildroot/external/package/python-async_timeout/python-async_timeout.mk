################################################################################
#
# python-async_timeout
#
################################################################################

PYTHON_ASYNC_TIMEOUT_VERSION = v2.0.0
PYTHON_ASYNC_TIMEOUT_SITE = $(call github,aio-libs,async_timeout,$(PYTHON_ASYNC_TIMEOUT_VERSION))
PYTHON_ASYNC_TIMEOUT_SETUP_TYPE = setuptools
PYTHON_ASYNC_TIMEOUT_LICENSE = Apache-2.0
PYTHON_ASYNC_TIMEOUT_LICENSE_FILES = LICENSE

$(eval $(python-package))
