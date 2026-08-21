function post_customize_image__001_change_root_password() {
    # user: root pass: orchid (yescrypt)
    display_alert "Changing root password..." "" "info"

    local user_hash='$y$j9T$bDAOVbAIhYZhPAdzwXetc/$djLyPMhxyQNPFe3uRtyPgqVfMXCvaS3MUx217ZZtFeB'
    echo "root:${user_hash}" | chroot_sdcard chpasswd -e
}

function post_customize_image__002_setup_user() {
    chroot_sdcard useradd -m -s /bin/bash orchid
    chroot_sdcard usermod -aG sudo,users orchid

    local user_hash='$y$j9T$bDAOVbAIhYZhPAdzwXetc/$djLyPMhxyQNPFe3uRtyPgqVfMXCvaS3MUx217ZZtFeB'
    echo "orchid:${user_hash}" | chroot_sdcard chpasswd -e
}

function post_customize_image__003_remove_firstboot() {
    chroot_sdcard rm -f /root/.not_logged_in_yet
}
