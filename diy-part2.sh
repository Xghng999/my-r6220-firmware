#!/bin/bash
#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
#

# 1. 开启 WiFi (将 disabled 从 1 改为 0)
sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/wifi/mac80211.sh

# 2. 移除重复/冲突的插件源码 (核心步骤：确保使用 part1 引入的 HomeProxy)
rm -rf feeds/luci/applications/luci-app-homeproxy
rm -rf feeds/packages/net/sing-box
