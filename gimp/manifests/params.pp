
class gimp::params {
    case $operatingsystem {
        Gentoo: {
            $package_name = 'media-gfx/gimp'
            $package_provider = 'portage'
        }
        /(CentOS|RedHat|Fedora)/: {
            $package_name = 'gimp'
            $package_provider = 'yum'
        }
        /(Debian|Ubuntu)/: {

        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
