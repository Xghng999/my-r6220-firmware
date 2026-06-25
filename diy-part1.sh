#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# 1. 移除可能冲突的旧插件源 (比如你原来的 helloworld)
# sed -i '/helloworld/d' feeds.conf.default
# sed -i '/passwall/d' feeds.conf.default

# 2. 添加 ImmortalWrt 官方软件源（包含最新版 HomeProxy 和 Sing-box）
# 即使你使用的是官方 OpenWrt 源码，也可以通过这种方式拉取 ImmortalWrt 的插件
# echo 'src-git homeproxy https://github.com/immortalwrt/homeproxy.git' >>feeds.conf.default

# 3. (可选) 添加其他常用的依赖源，确保编译不报错
echo 'src-git packages https://github.com/immortalwrt/packages.git' >>feeds.conf.default
sed -i '$a src-git smpackage https://github.com/kenzok8/small-package.git' feeds.conf.default
