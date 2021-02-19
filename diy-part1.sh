#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# sed -i '$a src-git project https://github.com/project-openwrt/openwrt' feeds.conf.default
# sed -i '$a src-git openwrt https://github.com/openwrt/packages' feeds.conf.default

# # Define My Package
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/diy/luci-app-adguardhome
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/luci-app-usb3disable package/diy/luci-app-usb3disable
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lienol/luci-app-passwall package/diy/luci-app-passwall
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lienol/dns-forwarder package/diy/dns-forwarder
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lienol/dns2socks package/diy/dns2socks
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lienol/ipt2socks package/diy/ipt2socks
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lienol/luci-app-brook-server package/diy/luci-app-brook-server
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lienol/luci-app-ipsec-vpnserver-manyusers package/diy/luci-app-ipsec-vpnserver-manyusers
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lienol/luci-app-ssr-libev-server package/diy/luci-app-ssr-libev-server
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lienol/luci-app-ssr-mudb-server package/diy/luci-app-ssr-mudb-server
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lienol/luci-app-trojan-server package/diy/luci-app-trojan-server
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lienol/luci-app-socat package/diy/luci-app-socat
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lienol/redsocks2 package/diy/redsocks2
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lienol/tcping package/diy/tcping
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lienol/trojan-go package/diy/trojan-go
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lienol/trojan-plus package/diy/trojan-plus
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/lienol/trojan package/diy/trojan
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/luci-app-chinadns package/diy/luci-app-chinadns
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/ChinaDNS package/diy/ChinaDNS
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/brook package/diy/brook
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/chinadns-ng package/diy/chinadns-ng
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/ipt2socks-alt package/diy/ipt2socks-alt
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/luci-app-naiveproxy package/diy/luci-app-naiveproxy
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/ssocks package/diy/ssocks
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/tcping-simple package/diy/tcping-simple
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/simple-obfs package/diy/simple-obfs
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/v2ray-plugin package/diy/v2ray-plugin
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/microsocks11 package/diy/microsocks11
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ctcgfw/naiveproxy package/diy/naiveproxy
svn co https://github.com/immortalwrt/immortalwrt/trunk/package/ntlf9t/openwrt-pdnsd-full package/diy/openwrt-pdnsd-full

rm -rf ./package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon  #新的argon主题
