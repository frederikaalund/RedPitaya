################################################################################
#
# python-cython
#
################################################################################

PYTHON_CYTHON_VERSION = 0.25.2
PYTHON_CYTHON_SOURCE = Cython-$(PYTHON_CYTHON_VERSION).tar.gz
PYTHON_CYTHON_SITE = https://pypi.python.org/packages/b7/67/7e2a817f9e9c773ee3995c1e15204f5d01c8da71882016cac10342ef031b
PYTHON_CYTHON_SETUP_TYPE = distutils
PYTHON_CYTHON_LICENSE = Apache-2.0
PYTHON_CYTHON_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
$(eval $(host-python-package))

