#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="markhorlinux"
iso_label="Markhorlinux-alpha-0.2"
iso_publisher="Markhor Linux <https://markhorlinux.org>"
iso_application="Markhor Linux Live/Rescue CD"
iso_version="alpha-0.2"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/gshadow"]="0:0:400"
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/etc/polkit-1/rules.d"]="0:0:750"
  ["/etc/sudoers.d"]="0:0:750"
  ["/usr/local/bin/markhorlinux-all-cores"]="0:0:755"
  ["/usr/local/bin/markhorlinux-final"]="0:0:755"
  ["/usr/local/bin/markhorlinux-remove-nvidia"]="0:0:755"
  ["/usr/local/bin/markhorlinux-displaymanager-check"]="0:0:755"
  ["/usr/local/bin/markhorlinux-before"]="0:0:755"
)
