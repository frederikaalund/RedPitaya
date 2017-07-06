################################################################################
#
# python-cchardet
#
################################################################################

# Note that the release on PyPi is different from the release on Github!
# The latter release will not build out-of-the-box.
PYTHON_CCHARDET_VERSION = 2.1.1
PYTHON_CCHARDET_SOURCE= cchardet-$(PYTHON_CCHARDET_VERSION).tar.gz
PYTHON_CCHARDET_SITE = https://pypi.python.org/packages/63/74/fbf92cd7fe2e603600096098d78f5c5957c5071861298d00084f058e174f
PYTHON_CCHARDET_SETUP_TYPE = setuptools
PYTHON_CCHARDET_LICENSE = Mozilla-1.1 or GPLv2 or LGPLv2.1
PYTHON_CCHARDET_LICENSE_FILES = COPYING

$(eval $(python-package))

