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
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
#sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
echo -i '$a src-git Openclash https://github.com/vernesong/OpenClash' feeds.conf.default
echo -i '$a src-git DDNS-GO https://github.com/jeessy2/ddns-go' feeds.conf.default
sed -i 's/vpn/services/g' package/zerotier/luci-app-zerotier/luasrc/controller/*.lua
sed -i 's/vpn/services/g' package/zerotier/luci-app-zerotier/luasrc/model/cbi/zerotier/*.lua
sed -i 's/vpn/services/g' package/zerotier/luci-app-zerotier/luasrc/view/zerotier/*.htm

