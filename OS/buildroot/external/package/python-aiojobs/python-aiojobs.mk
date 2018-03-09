################################################################################
#
# python-aiojobs
#
################################################################################

PYTHON_AIOJOBS_VERSION = v0.1.0
PYTHON_AIOJOBS_SITE = $(call github,aio-libs,aiojobs,$(PYTHON_AIOJOBS_VERSION))
PYTHON_AIOJOBS_SETUP_TYPE = setuptools
PYTHON_AIOJOBS_LICENSE = Apache-2.0
PYTHON_AIOJOBS_LICENSE_FILES = LICENSE

$(eval $(python-package))
