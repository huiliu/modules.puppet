
class rdesktop::params {
    case $operatingsystem {
        Gentoo: {
            $package_name = 'net-misc/rdesktop'
            $package_provider = 'portage'
        }
        /(CentOS|RedHat|Fedora)/: {
            $package_name = 'rdesktop'
            $package_provider = 'yum'
        }
        /(Debian|Ubuntu)/: {

        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
