-- The basic repository
Repository 'turris' 'https://api.turris.cz/openwrt-repo/omnia/packages' {
	subdirs = {'base', 'turrispackages', 'lucics', 'packages', 'routing', 'management', 'telephony'}
}

-- Make sure the updater is up to date before continuing
Package 'opkg-trans' { replan = true }
Install 'opkg-trans' 'updater-ng'
Install 'userlists' { ignore = { 'missing' } }

-- Install everything that was in the image
Install "openconnect" "kmod-usb-storage" "terminfo" "libuci-lua" "iwinfo" "openssh-sftp-server" "kmod-stp" "watchcat" "nuci" "samba36-server" "luci-app-statistics" "kmod-lib-textsearch" "luci-app-watchcat" "libc" "kmod-ebtables" "lxc-stop" "ntfs-3g-utils" "kmod-crypto-user" "libnetfilter-cthelper" "kmod-ip6-tunnel" "kmod-crypto-gf128" "kmod-ledtrig-oneshot" "opkg" "ntpclient" "luci-i18n-statistics-cs" "xfs-growfs" "wget" "kmod-usb-core" "ip" "libjpeg" "ddns-scripts_no-ip_com" "libpthread" "ubus" "iw" "python-codecs" "kmod-crypto-manager" "kmod-crypto-pcompress" "sfdisk" "kmod-bridge" "alsa-lib" "resolver-conf" "libneon" "rpcd" "diffutils" "busybox" "lighttpd-mod-cgi" "kmod-crypto-ctr" "libsysfs" "psmisc" "odhcpd" "kmod-usb-net-qmi-wwan" "luci-lib-ip" "lxc-hooks" "kmod-fs-cramfs" "kmod-crypto-rng-jitterentropy" "chat" "ahcpd" "kmod-nfnetlink" "kmod-ata-ahci-platform" "kmod-crypto-iv" "libubus-lua" "xfs-fsck" "kmod-crypto-hash" "thermometer" "kmod-tun" "glib2" "kmod-crypto-aead" "libiwinfo-lua" "luci-i18n-statistics-en" "lxc-ls" "kmod-usb-wdm" "kmod-crypto-deflate" "kmod-fs-udf" "kmod-ledtrig-netfilter" "lxc-common" "bash" "swconfig" "conntrack-tools" "ebtables" "kmod-fs-isofs" "libiwinfo" "foris" "libacl" "lxc-create" "rpcd-mod-lxc" "openssh-client-utils" "kmod-crypto-md4" "liblzma" "kmod-crypto-md5" "luci-app-samba" "libcurl" "kmod-md-multipath" "openssl-util" "libogg" "kmod-lib-crc-ccitt" "kmod-ledtrig-usbdev" "resize2fs" "lxc-configs" "lvm2" "openssh-server" "kmod-fs-nfsd" "libgcrypt" "acl" "libnetfilter-queue" "kmod-gre" "kmod-md-mod" "kmod-md-raid10" "kmod-pppoa" "luci-theme-bootstrap" "kmod-nf-nathelper" "kmod-pppoe" "sysfsutils" "c-rehash" "libcap" "vpnc-scripts" "luci-i18n-upnp-cs" "https-cert" "kmod-pppox" "kmod-veth" "kmod-ipt-conntrack" "mountd" "hd-idle" "nfs-kernel-server-utils" "cifsmount" "base-files" "kmod-lib-crc16" "kmod-wdt-orion" "kmod-nf-nat" "kmod-input-core" "relayd" "luci-i18n-hd-idle-cs" "libpcre" "kmod-fs-hfsplus" "libexif" "kmod-fs-msdos" "kmod-crypto-crc32c" "coreutils-base64" "partx-utils" "netifd" "coreutils" "libmnl" "ddns-scripts" "6in4" "libnettle" "bzip2" "python-light" "luci-i18n-upnp-en" "smartd" "libnetfilter-cttimeout" "uboot-envtools" "cryptsetup-openssl" "kmod-lib-xor" "dnsmasq" "kmod-mii" "procd" "resolveip" "usbutils" "attr" "lxc-monitor" "libblkid" "luci-i18n-hd-idle-en" "ddns-scripts_cloudflare" "ucollect-config" "kmod-crypto-hmac" "kmod-crypto-sha256" "kmod-ledtrig-heartbeat" "lxc-start" "ubusd" "libdbi" "kmod-dm" "libflac" "luci-app-lxc" "libwrap" "kmod-llc" "update_mac" "syslog-ng3" "openssh-moduli" "kmod-i2c-mv64xxx" "kmod-usb-serial-qualcomm" "shadow-su" "kmod-lib-crc32c" "luci-i18n-commands-cs" "jansson" "libspeex" "kmod-ledtrig-gpio" "libelf1" "etherwake" "libsensors" "kmod-iptunnel" "tar" "luajit" "kmod-mvsdio" "python-base" "br2684ctl" "kmod-i2c-core" "libgpg-error" "fuse-utils" "rsyncd" "lsblk" "kmod-crypto-sha512" "linux-atm" "kmod-usb-net-rndis" "kmod-rxrpc" "block-mount" "luasocket" "libvorbis" "kmod-nls-cp1250" "kmod-crypto-seqiv" "kmod-nls-cp1251" "kmod-fs-vfat" "xfs-mkfs" "luci-app-ddns" "kmod-usb2" "miniupnpd" "kmod-usb-serial-option" "kmod-usb3" "collectd-mod-interface" "firewall" "kmod-fs-exfat" "libmagic" "luci-i18n-commands-en" "comgt" "libxml2" "shadow-useradd" "watchdog_adjust" "cznic-cacert-bundle" "luci-app-ntpc" "luci-app-firewall" "libatsha204" "kmod-fs-hfs" "lighttpd" "luci-app-wshaper" "kmod-thermal" "kmod-nf-ipt" "shadow-groupadd" "libevent2" "dosfsck" "collectd-mod-network" "kmod-fs-xfs" "luci-i18n-tinyproxy-cs" "kmod-md-linear" "luci-i18n-ddns-cs" "libgnutls" "kmod-mmc" "tc" "python-email" "libuci" "liblua" "luci-app-rainbow" "libip4tc" "tcpdump" "ubi-utils" "lxc-info" "lxc-monitord" "kmod-ip6tables" "portmap" "kmod-crypto-xts" "odhcp6c" "sshfs" "fstools" "msmtp" "kmod-ath9k" "transmission-daemon-openssl" "kmod-crypto-pcbc" "uci" "lua" "kmod-fs-ext4" "shadow-passwd" "libfuse" "collectd" "kmod-fs-fscache" "losetup" "luci-i18n-tinyproxy-en" "flock" "kmod-ledtrig-timer" "logrotate" "libunbound" "libnetfilter-conntrack" "kmod-md-raid456" "luci-proto-3g" "curl" "kmod-hwmon-core" "rrdtool1" "updater-ng" "kmod-thermal-armada" "kmod-cryptodev" "kmod-nls-utf8" "kmod-usb-serial-wwan" "nuci-nethist" "knot-libdnssec" "oneshot" "kmod-nls-cp437" "vixie-cron" "libnetconf" "mtd" "python-flup" "opkg-trans" "libltdl" "kmod-ledtrig-transient" "wpad" "kmod-crypto-cbc" "shadow-usermod" "luci-i18n-watchcat-cs" "ath10k-firmware-qca988x" "knot-resolver" "i2c-tools" "liblxc" "kmod-sched" "luci-i18n-firewall-cs" "shadow-groupmod" "libjson-c" "kmod-fs-jfs" "libgcc" "kmod-crypto-authenc" "usb-modeswitch" "kmod-lib-raid6" "mkdosfs" "kmod-crypto-ccm" "nfs-kernel-server" "dnssec-rootkey" "libreadline" "libip6tc" "mjpg-streamer" "kmod-fs-btrfs" "luci-i18n-ntpc-cs" "tinyproxy" "davfs2" "lxc" "luci-proto-ppp" "libffi" "kmod-fs-configfs" "libuuid" "kmod-crypto-wq" "ppp" "luci-mod-admin-full" "xz" "cfdisk" "libubox" "luci-base" "luci-i18n-watchcat-en" "kmod-sound-core" "luci-app-commands" "socat" "libusb-1.0" "luci-i18n-firewall-en" "gnupg" "cznic-repo-keys" "bind-client" "lxc-config" "liblzo" "libsmartcols" "kmod-ata-ahci" "kmod-usb-net" "btrfs-progs" "luci-i18n-ntpc-en" "librt" "python-ncclient" "kmod-crypto-marvell-cesa" "kmod-mac80211" "shadow" "tune2fs" "shadow-userdel" "kmod-dnsresolver" "kmod-usb-serial" "rsync" "collectd-mod-iwinfo" "openssh-keygen" "libjson-script" "bind-libs" "shadow-groupdel" "swap-utils" "wshaper" "unbound" "librpc" "luci-i18n-wol-cs" "luci-proto-ipv6" "uclibcxx" "libblobmsg-json" "shadow-chage" "kmod-crypto-ecb" "luci-proto-vpnc" "daemon-watchdog" "iptables" "openvpn-openssl" "kmod-fs-ntfs" "python-bottle" "kmod-nf-conntrack-netlink" "schnapps" "kmod-crypto-des" "ntfs-3g" "lighttpd-mod-alias" "kmod-sit" "kmod-fuse" "kmod-nf-nathelper-extra" "luci-i18n-samba-cs" "ds-lite" "jshn" "lm-sensors" "udev" "start-indicator" "luci-i18n-wol-en" "libncurses" "create_notification" "e2fsprogs" "kmod-ipt-core" "libpcap" "kmod-ata-mvebu-ahci" "hdparm" "kmod-crypto-fcrypt" "kmod-ledtrig-default-on" "python-xml" "libuv" "kmod-ata-core" "knot-libzscanner" "procd-nand" "ca-certificates" "kmod-ppp" "vim-full" "kmod-fs-f2fs" "shadow-groups" "luci-app-wol" "sfpswitch" "libnfnetlink" "kmod-crypto-null" "smartmontools" "kmod-fs-minix" "mdadm" "collectd-mod-load" "shadow-utils" "hfsfsck" "luci-app-upnp" "luci-i18n-samba-en" "minidlna" "python-openssl" "luci-app-minidlna" "libubus" "openssh-sftp-client" "luci-proto-openconnect" "user_notify" "luci-proto-relay" "samba36-client" "kmod-iptunnel4" "libeventlog" "kmod-nf-conntrack" "uqmi" "kmod-iptunnel6" "luasec" "gnupg-utils" "ddns-scripts_nsupdate" "lxc-snapshot" "kmod-fs-nfs" "usign" "kmod-md-raid0" "kmod-md-raid1" "libxtables" "ip6tables" "libmount" "zlib" "cert-backup" "luci-i18n-transmission-cs" "lxc-autostart" "htop" "kmod-nf-ipt6" "file" "kmod-nls-cp850" "kmod-nls-cp932" "kmod-fs-autofs4" "kmod-nls-cp852" "badblocks" "kmod-ath10k" "luci-lib-nixio" "luci-app-mjpg-streamer" "luci-i18n-ahcp-cs" "kmod-nls-cp775" "libldns" "collectd-mod-rrdtool" "kmod-nls-iso8859-13" "kmod-nls-iso8859-15" "luci-app-tinyproxy" "rainbow-omnia" "at" "python-logging" "vpnc" "kmod-fs-exportfs" "kmod-nls-iso8859-1" "python-beaker" "kmod-crypto-cmac" "kmod-nls-iso8859-2" "luci-lib-jsonc" "turris-version" "kmod-nls-iso8859-6" "bind-dig" "kmod-nls-iso8859-8" "libxslt" "kmod-nls-cp862" "kmod-nls-cp864" "pptpd" "kmod-nls-cp866" "kmod-crypto-rng" "luci" "fdisk" "luci-i18n-transmission-en" "kmod-nf-conntrack6" "libid3tag" "kmod-usb-uhci" "libgmp" "knot-libknot" "libsqlite3" "luci-i18n-ahcp-en" "luci-i18n-base-cs" "librrd1" "kmod-lib-lzo" "libext2fs" "getopt" "kmod-ath" "libexpat" "kmod-atm" "ubox" "kernel" "libnl-tiny" "unbound-anchor" "libbz2" "blkid" "openssh-client" "kmod-lib-zlib" "ntpdate" "luci-app-transmission" "kmod-ledtrig-morse" "mkhfs" "kmod-fs-nfs-common" "libdevmapper" "lighttpd-mod-fastcgi" "nethist" "luci-i18n-base-en" "kmod-fs-cifs" "luci-i18n-wshaper-cs" "lxc-console" "kmod-usb-storage-extras" "kmod-mppe" "6rd" "kmod-nls-base" "xz-utils" "mount-utils" "luci-i18n-minidlna-cs" "kmod-fs-afs" "libpopt" "jsonfilter" "hostapd-common" "lxc-attach" "wireless-tools" "userlists" "kmod-ath9k-common" "kmod-usb-net-cdc-ether" "libattr" "wol" "kmod-crypto-sha1" "vsftpd" "libopenssl" "shadow-common" "kmod-nls-koi8r" "luci-app-hd-idle" "kmod-scsi-core" "luci-i18n-wshaper-en" "kmod-slhc" "lxc-templates" "kmod-cfg80211" "luci-app-ahcp" "python-bottle-i18n" "ppp-mod-pppoa" "libffmpeg" "6to4" "ppp-mod-pppoe" "luci-i18n-minidlna-en" "kmod-lib-crc-itu-t" "kmod-ipt-nat" "kmod-sched-core" "kmod-ledtrig-netdev"  { ignore = { 'missing' } }
Install "ntpdate" "oneshot" "cznic-repo-keys" "foris" "cert-backup" "unbound-anchor" "wireless-tools" "openssh-server" "schnapps" "diffutils" "sfpswitch" "opkg-trans" "updater-ng" "kmod-tun" "bash" "psmisc" "shadow" "shadow-chage" "shadow-common" "shadow-groupadd" "shadow-groupdel" "shadow-groupmod" "shadow-groups" "shadow-passwd" "shadow-su" "shadow-useradd" "shadow-userdel" "shadow-usermod" "shadow-utils" "i2c-tools" "daemon-watchdog" "nuci" "nuci-nethist" "logrotate" "foris" "nethist" "https-cert" "lm-sensors" "kmod-usb-serial-qualcomm" { ignore = { 'missing' } }
