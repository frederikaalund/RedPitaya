################################################################################
#
# python-aiohttp
#
################################################################################

PYTHON_AIOHTTP_VERSION = v1.1.4
PYTHON_AIOHTTP_SITE = $(call github,KeepSafe,aiohttp,$(PYTHON_AIOHTTP_VERSION))
PYTHON_AIOHTTP_SETUP_TYPE = setuptools
PYTHON_AIOHTTP_LICENSE = Apache-2.0
PYTHON_AIOHTTP_LICENSE_FILES = LICENSE.txt
PYTHON_AIOHTTP_DEPENDENCIES += python-async_timeout
PYTHON_AIOHTTP_DEPENDENCIES += python-chardet
PYTHON_AIOHTTP_DEPENDENCIES += python-multidict

$(eval $(python-package))
