#
# Copyright (C) 2006-2012 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=xfsprogs
PKG_RELEASE:=2
PKG_VERSION:=3.1.7
PKG_SOURCE_URL:=ftp://oss.sgi.com/projects/xfs/previous/
PKG_MD5SUM:=049cf9873794ea49d0bb3f12d45748a4

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_INSTALL:=1
PKG_FIXUP:=autoreconf
PKG_CHECK_FORMAT_SECURITY:=0

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk

define Package/xfsprogs/default
  SECTION:=utils
  CATEGORY:=Utilities
  SUBMENU:=Filesystem
  DEPENDS:=+libuuid +libpthread +librt
  URL:=http://oss.sgi.com/projects/xfs
endef

define Package/xfs-mkfs
$(call Package/xfsprogs/default)
  TITLE:=Utility for creating XFS filesystems
endef

define Package/xfs-admin
$(call Package/xfsprogs/default)
  TITLE:=Utilities for changing parameters of an XFS filesystems
endef

define Package/xfs-fsck
$(call Package/xfsprogs/default)
  TITLE:=Utilities for checking and repairing XFS filesystems
endef

define Package/xfs-growfs
$(call Package/xfsprogs/default)
  TITLE:=Utility for increasing the size of XFS filesystems
endef

CONFIGURE_ARGS += \
	--enable-gettext=no \
	--enable-lib64=no \
	--enable-blkid=no

TARGET_CFLAGS += \
	-I$(STAGING_DIR)/usr/include \
	-D_LARGEFILE64_SOURCE \
	-D_FILE_OFFSET_BITS=64 \
	-D_GNU_SOURCE

MAKE_FLAGS += \
	DEBUG= Q= \
	PCFLAGS="-Wall" \
	PKG_PLATFORM=linux \
	ENABLE_GETTEXT=no \
	prefix=$(PKG_INSTALL_DIR)/usr \
	exec_prefix=$(PKG_INSTALL_DIR)/usr \
	PKG_SBIN_DIR=$(PKG_INSTALL_DIR)/usr/sbin \
	PKG_ROOT_SBIN_DIR=$(PKG_INSTALL_DIR)/sbin \
	PKG_MAN_DIR=$(PKG_INSTALL_DIR)/usr/man \
	PKG_LOCALE_DIR=$(PKG_INSTALL_DIR)/usr/share/locale \
	PKG_ROOT_LIB_DIR=$(PKG_INSTALL_DIR)/lib \
	PKG_DOC_DIR=$(PKG_INSTALL_DIR)/usr/share/doc/xfsprogs

define Package/xfs-mkfs/install
	mkdir -p $(1)/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/sbin/mkfs.xfs $(1)/sbin
endef

define Package/xfs-admin/install
	mkdir -p $(1)/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/xfs_db $(1)/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/xfs_admin $(1)/sbin
endef

define Package/xfs-fsck/install
	mkdir -p $(1)/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/sbin/xfs_repair $(1)/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/xfs_db $(1)/sbin
endef

define Package/xfs-growfs/install
	mkdir -p $(1)/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/xfs_growfs $(1)/sbin
endef

$(eval $(call BuildPackage,xfs-admin))
$(eval $(call BuildPackage,xfs-mkfs))
$(eval $(call BuildPackage,xfs-fsck))
$(eval $(call BuildPackage,xfs-growfs))
