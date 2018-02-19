################################################################################
#
# python-rxpy
#
################################################################################

# The commit id corresponds to 1.6.1.
# The author didn't provide a tag for this version.
PYTHON_RXPY_VERSION = 44081a1bba8e897768a22da2ae0580456ff13285
PYTHON_RXPY_SITE = $(call github,ReactiveX,RxPY,$(PYTHON_RXPY_VERSION))
PYTHON_RXPY_SETUP_TYPE = setuptools
PYTHON_RXPY_LICENSE = Apache-2.0
PYTHON_RXPY_LICENSE_FILES = LICENSE

$(eval $(python-package))
