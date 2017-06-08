################################################################################
#
# python-distro
#
################################################################################

PYTHON_DISTRO_VERSION = v1.0.4
PYTHON_DISTRO_SITE = $(call github,nir0s,distro,$(PYTHON_DISTRO_VERSION))
PYTHON_DISTRO_SETUP_TYPE = setuptools
PYTHON_DISTRO_LICENSE = Apache-2.0
PYTHON_DISTRO_LICENSE_FILES = LICENSE

$(eval $(python-package))

