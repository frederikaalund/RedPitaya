################################################################################
#
# python-jsonpointer
#
################################################################################

PYTHON_JSONPOINTER_VERSION = v2.0
PYTHON_JSONPOINTER_SITE = $(call github,stefankoegl,python-json-pointer,$(PYTHON_JSONPOINTER_VERSION))
PYTHON_JSONPOINTER_SETUP_TYPE = setuptools
PYTHON_JSONPOINTER_LICENSE = BSD
PYTHON_JSONPOINTER_LICENSE_FILES = LICENSE.txt

$(eval $(python-package))
