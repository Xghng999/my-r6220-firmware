#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)

# 3. (可选) 添加其他常用的依赖源，确保编译不报错
# echo 'src-git packages https://github.com/immortalwrt/packages.git' >>feeds.conf.default
# sed -i '$a src-git smpackage https://github.com/kenzok8/small-package.git' feeds.conf.default
sed -i '$a src-git smpackage https://github.com/Xghng999/small-package.git' feeds.conf.default
