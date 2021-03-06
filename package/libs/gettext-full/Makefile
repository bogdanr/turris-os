#
# Copyright (C) 2006-2015 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=gettext-full
PKG_VERSION:=0.19.4
PKG_RELEASE:=4

PKG_SOURCE:=gettext-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=@GNU/gettext
PKG_MD5SUM:=997c9070354eff5517115feaea6038f0
PKG_BUILD_DIR:=$(BUILD_DIR)/gettext-$(PKG_VERSION)
HOST_BUILD_DIR:=$(BUILD_DIR_HOST)/gettext-$(PKG_VERSION)

PKG_MAINTAINER:=Jo-Philipp Wich <jow@openwrt.org>
PKG_LICENSE:=GPL-3.0+

PKG_FIXUP:=autoreconf
PKG_INSTALL:=1
PKG_BUILD_PARALLEL:=0
PKG_BUILD_DEPENDS:=gettext-full/host
PKG_CHECK_FORMAT_SECURITY:=0

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk

define Package/libintl-full
  SECTION:=libs
  CATEGORY:=Libraries
  TITLE:=GNU Internationalization library
  URL:=http://www.gnu.org/software/gettext/
endef

define Package/gettext
  SECTION:=utils
  CATEGORY:=Utilities
  DEPENDS:=+libintl-full
  TITLE:=GNU Internationalization library
  URL:=http://www.gnu.org/software/gettext/
endef

TARGET_CFLAGS += $(FPIC)
ifneq ($(HOST_OS),Linux)
  TARGET_CFLAGS += -I$(STAGING_DIR_HOST)/include
endif
ifdef CONFIG_USE_MUSL
  TARGET_CFLAGS += -D__UCLIBC__
endif

CONFIGURE_ARGS += \
	--enable-shared \
	--enable-static \
	--disable-rpath \
	--enable-nls \
	--disable-java \
	--disable-native-java \
	--disable-openmp \
	--with-included-gettext \
	--without-libintl-prefix \
	--without-libexpat-prefix \
	--without-emacs

HOST_CONFIGURE_ARGS += \
	--with-included-libxml --without-libxml2-prefix --with-included-libcroco

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/lib/libintl-full/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/libintl.h $(1)/usr/lib/libintl-full/include/

	$(INSTALL_DIR) $(1)/usr/lib/libintl-full/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libintl.{a,so*} $(1)/usr/lib/libintl-full/lib/

	$(INSTALL_DIR) $(1)/usr/share/aclocal
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/share/aclocal/* $(1)/usr/share/aclocal/
endef

define Package/libintl-full/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libintl.so* $(1)/usr/lib/
endef

define Build/Compile
	$(call Build/Compile/Default,)
	$(INSTALL_DIR) $(PKG_INSTALL_DIR)/usr/bin
	$(TARGET_CC) -o $(PKG_INSTALL_DIR)/usr/bin/gettext_filter $(TARGET_CFLAGS) $(TARGET_LDFLAGS) -I$(PKG_BUILD_DIR)/gettext-tools/intl -L$(PKG_BUILD_DIR)/gettext-tools/intl/.libs -lintl ./files/gettext_filter.c
endef

define Package/gettext/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(CP) $(PKG_INSTALL_DIR)/usr/bin/gettext* $(1)/usr/bin
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,libintl-full))
$(eval $(call BuildPackage,gettext))
