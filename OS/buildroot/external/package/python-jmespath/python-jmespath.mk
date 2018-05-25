################################################################################
#
# python-jmespath
#
################################################################################

PYTHON_JMESPATH_VERSION = 0.9.3
PYTHON_JMESPATH_SITE = $(call github,jmespath,jmespath,$(PYTHON_JMESPATH_VERSION))
PYTHON_JMESPATH_SETUP_TYPE = setuptools
PYTHON_JMESPATH_LICENSE = MIT
PYTHON_JMESPATH_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))

