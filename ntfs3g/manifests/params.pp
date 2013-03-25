
class ntfs3g::params {
    case $operatingsystem {
        Gentoo: {
            $package_name = 'sys-fs/ntfs3g'
            $package_provider = 'portage'
        }
        /(CentOS|RedHat|Fedora)/: {
            $package_name = 'ntfs3g'
            $package_provider = 'yum'
        }
        /(Debian|Ubuntu)/: {

        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
