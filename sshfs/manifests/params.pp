
class sshfs::params {
    case $operatingsystem {
        Gentoo: {
            $package_name = 'sys-fs/sshfs-fuse'
            $package_provider = 'portage'
        }
        /(CentOS|RedHat|Fedora)/: {
            $package_name = 'sshfs'
            $package_provider = 'yum'
        }
        /(Debian|Ubuntu)/: {

        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
