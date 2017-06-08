################################################################################
#
# python-cchardet
#
################################################################################

PYTHON_CCHARDET_VERSION = 2.1.0
PYTHON_CCHARDET_SOURCE= cchardet-$(PYTHON_CCHARDET_VERSION).tar.gz
PYTHON_CCHARDET_SITE = https://pypi.python.org/packages/07/e0/92e36353d3442163f6090a084c06436c5fab74bba5e7ac997b81e390e025
PYTHON_CCHARDET_SETUP_TYPE = setuptools
PYTHON_CCHARDET_LICENSE = Mozilla-1.1 or GPLv2 or LGPLv2.1
PYTHON_CCHARDET_LICENSE_FILES = COPYING

$(eval $(python-package))

