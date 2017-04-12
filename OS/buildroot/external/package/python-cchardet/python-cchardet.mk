################################################################################
#
# python-cchardet
#
################################################################################

PYTHON_CCHARDET_VERSION = 2.0.0
PYTHON_CCHARDET_SOURCE= cchardet-$(PYTHON_CCHARDET_VERSION).tar.gz
PYTHON_CCHARDET_SITE = https://pypi.python.org/packages/5a/87/6678a0f74397fb08008cb05ed8c7f2a0d97233b037619d6f580d96ef2a23
PYTHON_CCHARDET_SETUP_TYPE = setuptools
PYTHON_CCHARDET_LICENSE = Mozilla-1.1 or GPLv2 or LGPLv2.1
PYTHON_CCHARDET_LICENSE_FILES = COPYING

$(eval $(python-package))

