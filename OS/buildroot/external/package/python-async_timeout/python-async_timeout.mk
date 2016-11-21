################################################################################
#
# python-async_timeout
#
################################################################################

PYTHON_ASYNC_TIMEOUT_VERSION = f9138d62a076f1329e14fcad5c2af46aefedb5f1
PYTHON_ASYNC_TIMEOUT_SITE = $(call github,frederikaalund,async_timeout,$(PYTHON_ASYNC_TIMEOUT_VERSION))
PYTHON_ASYNC_TIMEOUT_SETUP_TYPE = setuptools
PYTHON_ASYNC_TIMEOUT_LICENSE = Apache-2.0
PYTHON_ASYNC_TIMEOUT_LICENSE_FILES = LICENSE

$(eval $(python-package))
