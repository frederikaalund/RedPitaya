################################################################################
#
# python-multidict
#
################################################################################

PYTHON_MULTIDICT_VERSION = v2.1.4
PYTHON_MULTIDICT_SITE = $(call github,aio-libs,multidict,$(PYTHON_MULTIDICT_VERSION))
PYTHON_MULTIDICT_SETUP_TYPE = setuptools
PYTHON_MULTIDICT_LICENSE = Apache-2.0
PYTHON_MULTIDICT_LICENSE_FILES = LICENSE

$(eval $(python-package))
