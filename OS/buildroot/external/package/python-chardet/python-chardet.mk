################################################################################
#
# python-chardet
#
################################################################################

PYTHON_CHARDET_VERSION = 2.3.0
PYTHON_CHARDET_SITE = $(call github,chardet,chardet,$(PYTHON_CHARDET_VERSION))
PYTHON_CHARDET_SETUP_TYPE = setuptools
PYTHON_CHARDET_LICENSE = LGPLv2.1
PYTHON_CHARDET_LICENSE_FILES = LICENSE

$(eval $(python-package))
