#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

{ echo 'src-git ddnsgo https://github.com/sirpdboy/luci-app-ddns-go.git^6c251e5717c52c2a11f6be628db3f7f274607531 package/feeds/packages/ddns-go'; cat feeds.conf.default; } > feeds.conf.default.new && mv feeds.conf.default.new feeds.conf.default
{ echo 'src-git openclash https://github.com/vernesong/OpenClash.git feeds/luci/luci-app-openclash'; cat feeds.conf.default; } > feeds.conf.default.new && mv feeds.conf.default.new feeds.conf.default