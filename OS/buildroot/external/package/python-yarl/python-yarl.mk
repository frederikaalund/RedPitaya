################################################################################
#
# python-yarl
#
################################################################################

PYTHON_YARL_VERSION = 0.10.0
PYTHON_YARL_SOURCE = yarl-$(PYTHON_YARL_VERSION).tar.gz
PYTHON_YARL_SITE = https://pypi.python.org/packages/e4/aa/bc97551a2eb0c25711da61e16940decefdcc41b7bb8897b3c24e1623ef74
PYTHON_YARL_SETUP_TYPE = setuptools
PYTHON_YARL_LICENSE = Apache-2.0
PYTHON_YARL_LICENSE_FILES = LICENSE

$(eval $(python-package))

