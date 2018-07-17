################################################################################
#
# python-jsonpatch
#
################################################################################

PYTHON_JSONPATCH_VERSION = v1.23
PYTHON_JSONPATCH_SITE = $(call github,stefankoegl,python-json-patch,$(PYTHON_JSONPATCH_VERSION))
PYTHON_JSONPATCH_SETUP_TYPE = setuptools
PYTHON_JSONPATCH_LICENSE = BSD
PYTHON_JSONPATCH_LICENSE_FILES = COPYING
PYTHON_JSONPATCH_DEPENDENCIES += python-jsonpointer

$(eval $(python-package))
