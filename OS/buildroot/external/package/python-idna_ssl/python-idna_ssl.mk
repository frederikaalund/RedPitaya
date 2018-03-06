################################################################################
#
# python-idna_ssl
#
################################################################################

PYTHON_IDNA_SSL_VERSION = v1.0.0
PYTHON_IDNA_SSL_SITE = $(call github,aio-libs,idna-ssl,$(PYTHON_IDNA_SSL_VERSION))
PYTHON_IDNA_SSL_SETUP_TYPE = setuptools
PYTHON_IDNA_SSL_LICENSE = MIT
PYTHON_IDNA_SSL_LICENSE_FILES = LICENSE

$(eval $(python-package))

