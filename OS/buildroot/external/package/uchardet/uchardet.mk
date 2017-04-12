################################################################################
#
# uchardet
#
################################################################################

UCHARDET_VERSION = fabbecad0323fb559daa2d9ded7e676a6d784dd0
UCHARDET_SITE = $(call github,PyYoshi,uchardet,$(UCHARDET_VERSION))
UCHARDET_LICENSE = Mozilla-1.1 or GPLv2 or LGPLv2.1
UCHARDET_LICENSE_FILES = COPYING

$(eval $(cmake-package))

