# Corona's NixOS Configuration

## Usage

提前生成并拷贝一份 `hardware-configuration.nix`, 克隆本仓库到本地.

```bash
git clone --depth=1 https://github.com/corona09/nix-config.git
```

运行仓库下的 `sync.sh` 脚本, 覆盖 `/etc/nixos` 下的配置文件 (如果是安装过程, 请自行拷贝文件).

将 `/etc/nixos/hardware-configuration.nix` 替换为之前拷贝的 `hardware-configuration.nix` .

`/etc/nixos/modules/hardware.nix` 中有与部分硬件相关的设置 (主要是 Legacy 与 UEFI 相关).

软件包配置在 `modules/syspkgs.nix` 中, 可以根据需要添加/删除相应的包.

配置好网络, chick start! (~~小黑子~~)

```bash
sudo nixos-rebuild switch
# 或
sudo nixos-install --root /mnt
```

## After Installation

该配置尚不完善, 在安装完成之后, 还有部分内容需要手动配置:

- 设置 wifi
- chrome 账号登录, 同步浏览器数据
- 拷贝 `~/.config/user-dirs.dirs`
- zotero 安装插件, 启用同步, 更改目录
- qt5ct 设置 theme
- lxappearance 设置 gtk 主题
- 登录 nextcloud, 启用虚拟存储, 更新忽略列表
- fcitx5 设置 theme, 字体, 快捷键
- 安装中华书局宋体, 该字体必须登录才能下载, 将其放到 `~/.local/share/fonts` 目录下
- 需要手动下载 libreoffice, 设置 libreoffice 背景与 icon 主题: `nix-env -iA nixos.libreoffice-still`
- 设置 konsole 主题配色
