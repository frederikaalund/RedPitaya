################################################################################
#
# python-attrs-ars
#
################################################################################

PYTHON_ATTRS_USER_VERSION = 17.4.0
PYTHON_ATTRS_USER_SITE = $(call github,python-attrs,attrs,$(PYTHON_ATTRS_USER_VERSION))
PYTHON_ATTRS_USER_SETUP_TYPE = setuptools
PYTHON_ATTRS_USER_LICENSE = MIT
PYTHON_ATTRS_USER_LICENSE_FILES = LICENSE

$(eval $(python-package))
