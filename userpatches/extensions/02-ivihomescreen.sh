function post_customize_image__010_install_homescreen() {
    chroot_sdcard_apt_get_update
    chroot_sdcard_apt_get upgrade -y

    chroot_sdcard_apt_get_install software-properties-common

    chroot_sdcard add-apt-repository ppa:kisak/kisak-mesa --yes --no-update

    chroot_sdcard_apt_get_update
    chroot_sdcard_apt_get upgrade -y

    wget -O "${SDCARD}/tmp/homescreen.deb" "https://github.com/kerbilg/ivi-homescreen-builds/releases/latest/download/homescreen_1.0.0_amd64.deb"

    chroot_sdcard_apt_get_install /tmp/homescreen.deb

    chroot_sdcard_apt_get_update
    chroot_sdcard_apt_get upgrade -y
}
