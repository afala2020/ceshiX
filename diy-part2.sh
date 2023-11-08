# 修改固件默认名称
sed -i 's/OpenWrt/NEWIFI/g' package/base-files/files/bin/config_generate
# sed -i 's/ImmortalWrt/NEWIFI/g' package/base-files/files/bin/config_generate

# 修改固件默认时区
sed -i 's/UTC/CST-8/g' package/base-files/files/bin/config_generate

# 管理地址
sed -i 's/192.168.1.1/192.168.99.1/g' package/base-files/files/bin/config_generate

# 默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argonne/g' feeds/luci/collections/luci/Makefile
# sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# 修改NAS为网络存储
sed -i 's/"NAS"/"网络存储"/g' `grep "NAS" -rl ./`
