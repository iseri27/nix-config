#!/usr/bin/env bash

# 对当前配置进行备份
time=$(date "+%Y-%m-%d_%H-%M-%S")
backupdir="$HOME/.nixos-config-backup/$time"
rm -rf "$backupdir"
mkdir -p "$backupdir"
cp -r /etc/nixos/* $backupdir/

tmpdir=/tmp/nixos-config-sync/
rm -rf $tmpdir
mkdir -p $tmpdir
cp -f /etc/nixos/hardware/default.nix $tmpdir/hardware-configuration.nix

if [ -f /etc/nixos/modules/boot/default.nix ]; then
    cp -f /etc/nixos/modules/boot/default.nix $tmpdir/boot.nix
else
    cp -f ./modules/boot/default.nix $tmpdir/boot.nix
fi

sudo rm -rf /etc/nixos
sudo mkdir /etc/nixos
sudo cp -rf ./* /etc/nixos/
sudo cp -f $tmpdir/hardware-configuration.nix /etc/nixos/hardware/default.nix
sudo cp -f $tmpdir/boot.nix /etc/nixos/modules/boot/default.nix
sudo rm -rf /etc/nixos/{sync.sh,README.md}
