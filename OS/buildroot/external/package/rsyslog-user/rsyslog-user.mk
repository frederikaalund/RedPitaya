################################################################################
#
# rsyslog-user
#
################################################################################

RSYSLOG_USER_VERSION = 8.25.0
RSYSLOG_USER_SOURCE = rsyslog-$(RSYSLOG_USER_VERSION).tar.gz
RSYSLOG_USER_SITE = http://rsyslog.com/files/download/rsyslog
RSYSLOG_USER_LICENSE = GPLv3, LGPLv3, Apache-2.0
RSYSLOG_USER_LICENSE_FILES = COPYING COPYING.LESSER COPYING.ASL20
RSYSLOG_USER_DEPENDENCIES = zlib libestr libfastjson liblogging host-pkgconf
RSYSLOG_USER_CONF_ENV = ac_cv_prog_cc_c99='-std=c99'
RSYSLOG_USER_PLUGINS = imdiag imfile impstats imptcp \
	mmanon mmaudit mmfields mmjsonparse mmpstrucdata mmrm1stspace mmsequence mmutf8fix \
	mail omprog omruleset omstdout omuxsock \
	pmaixforwardedfrom pmciscoios pmcisconames pmlastmsg pmsnare
RSYSLOG_USER_CONF_OPTS = --disable-generate-man-pages \
	$(foreach x,$(call qstrip,$(RSYSLOG_USER_PLUGINS)),--enable-$(x))

# Build after BusyBox
ifeq ($(BR2_PACKAGE_BUSYBOX),y)
RSYSLOG_USER_DEPENDENCIES += busybox
endif

ifeq ($(BR2_PACKAGE_GNUTLS),y)
RSYSLOG_USER_DEPENDENCIES += gnutls
RSYSLOG_USER_CONF_OPTS += --enable-gnutls
else
RSYSLOG_USER_CONF_OPTS += --disable-gnutls
endif

ifeq ($(BR2_PACKAGE_LIBEE),y)
RSYSLOG_USER_DEPENDENCIES += libee
endif

ifeq ($(BR2_PACKAGE_LIBGCRYPT),y)
RSYSLOG_USER_DEPENDENCIES += libgcrypt
RSYSLOG_USER_CONF_ENV += LIBGCRYPT_CONFIG=$(STAGING_DIR)/usr/bin/libgcrypt-config
RSYSLOG_USER_CONF_OPTS += --enable-libgcrypt
else
RSYSLOG_USER_CONF_OPTS += --disable-libgcrypt
endif

ifeq ($(BR2_PACKAGE_MYSQL),y)
RSYSLOG_USER_DEPENDENCIES += mysql
RSYSLOG_USER_CONF_OPTS += --enable-mysql
RSYSLOG_USER_CONF_ENV += ac_cv_prog_MYSQL_CONFIG=$(STAGING_DIR)/usr/bin/mysql_config
else
RSYSLOG_USER_CONF_OPTS += --disable-mysql
endif

ifeq ($(BR2_PACKAGE_POSTGRESQL),y)
RSYSLOG_USER_DEPENDENCIES += postgresql
RSYSLOG_USER_CONF_OPTS += --enable-pgsql
RSYSLOG_USER_CONF_ENV += ac_cv_prog_PG_CONFIG=$(STAGING_DIR)/usr/bin/pg_config
else
RSYSLOG_USER_CONF_OPTS += --disable-pgsql
endif

ifeq ($(BR2_PACKAGE_UTIL_LINUX_LIBUUID),y)
RSYSLOG_USER_DEPENDENCIES += util-linux
RSYSLOG_USER_CONF_OPTS += --enable-uuid
else
RSYSLOG_USER_CONF_OPTS += --disable-uuid
endif

ifeq ($(BR2_INIT_SYSTEMD),y)
RSYSLOG_USER_CONF_OPTS += \
	--enable-systemd \
	--with-systemdsystemunitdir=/usr/lib/systemd/system
RSYSLOG_USER_DEPENDENCIES += systemd
else
RSYSLOG_USER_CONF_OPTS += --disable-systemd
endif

define RSYSLOG_USER_INSTALL_INIT_SYSV
	$(INSTALL) -m 0755 -D $(RSYSLOG_USER_PKGDIR)/S51rsyslog \
		$(TARGET_DIR)/etc/init.d/S51rsyslog
endef

# The rsyslog.service is installed by rsyslog, but the link is not created
# so the service is not enabled.
# We need to create another link which is due to the fact that the
# rsyslog.service contains an Alias=
# If we were to use systemctl enable to enable the service, it would
# create both, so we mimic that.
define RSYSLOG_USER_INSTALL_INIT_SYSTEMD
	mkdir -p $(TARGET_DIR)/etc/systemd/system/multi-user.target.wants
	ln -sf ../../../../usr/lib/systemd/system/rsyslog.service \
		$(TARGET_DIR)/etc/systemd/system/multi-user.target.wants/rsyslog.service
	ln -sf ../../../../usr/lib/systemd/system/rsyslog.service \
		$(TARGET_DIR)/etc/systemd/system/syslog.service
endef

define RSYSLOG_USER_INSTALL_CONF
	$(INSTALL) -m 0644 -D $(@D)/platform/redhat/rsyslog.conf \
		$(TARGET_DIR)/etc/rsyslog.conf
	mkdir -p $(TARGET_DIR)/etc/rsyslog.d
endef

RSYSLOG_USER_POST_INSTALL_TARGET_HOOKS += RSYSLOG_USER_INSTALL_CONF

$(eval $(autotools-package))
