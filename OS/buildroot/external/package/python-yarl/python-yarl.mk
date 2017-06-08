################################################################################
#
# python-yarl
#
################################################################################

PYTHON_YARL_VERSION = 0.10.2
PYTHON_YARL_SOURCE = yarl-$(PYTHON_YARL_VERSION).tar.gz
PYTHON_YARL_SITE = https://pypi.python.org/packages/83/cd/c9d2c92f12de6bbb8ab025a6a9488d64e75f8650e52232b4718124d28279
PYTHON_YARL_SETUP_TYPE = setuptools
PYTHON_YARL_LICENSE = Apache-2.0
PYTHON_YARL_LICENSE_FILES = LICENSE

$(eval $(python-package))

