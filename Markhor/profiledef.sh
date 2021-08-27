#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="markhorlinux"
iso_label="markhorlinuxs-v0.1.1"
iso_publisher="markhorlinux <http://www.markhorlinux.org>"
iso_application="Markhorlinux Live/Rescue CD"
iso_version="v0.1.1"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito' 'uefi-x64.systemd-boot.esp' 'uefi-x64.systemd-boot.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/gshadow"]="0:0:600"	
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/etc/polkit-1/rules.d"]="0:0:750"
  ["/etc/sudoers.d"]="0:0:750"
  ["/usr/local/bin/markhor-all-cores"]="0:0:755"
  ["/usr/local/bin/markhor-final"]="0:0:755"
  ["/usr/local/bin/markhor-remove-nvidia"]="0:0:755"
  ["/usr/local/bin/markhor-displaymanager-check"]="0:0:755"
  ["/usr/local/bin/markhor-before"]="0:0:755"
)
