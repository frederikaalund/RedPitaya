################################################################################
#
# python-pympler
#
################################################################################

PYTHON_PYMPLER_VERSION = 0.4.3
PYTHON_PYMPLER_SITE = $(call github,pympler,pympler,$(PYTHON_PYMPLER_VERSION))
PYTHON_PYMPLER_SETUP_TYPE = distutils
PYTHON_PYMPLER_LICENSE = Apache-2.0
PYTHON_PYMPLER_LICENSE_FILES = LICENSE

$(eval $(python-package))
