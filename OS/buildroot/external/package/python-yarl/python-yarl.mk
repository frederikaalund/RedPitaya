################################################################################
#
# python-yarl
#
################################################################################

PYTHON_YARL_VERSION = v0.11.0
PYTHON_YARL_SITE = $(call github,aio-libs,yarl,$(PYTHON_YARL_VERSION))
PYTHON_YARL_SETUP_TYPE = setuptools
PYTHON_YARL_LICENSE = Apache-2.0
PYTHON_YARL_LICENSE_FILES = LICENSE

$(eval $(python-package))

