################################################################################
#
# python-async_exit_stack
#
################################################################################

PYTHON_ASYNC_EXIT_STACK_VERSION = 1.0.1
PYTHON_ASYNC_EXIT_STACK_SITE = $(call github,sorcio,async_exit_stack,$(PYTHON_ASYNC_EXIT_STACK_VERSION))
PYTHON_ASYNC_EXIT_STACK_SETUP_TYPE = setuptools
PYTHON_ASYNC_EXIT_STACK_LICENSE = PSF
PYTHON_ASYNC_EXIT_STACK_LICENSE_FILES = LICENSE

$(eval $(python-package))
