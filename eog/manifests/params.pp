
class eog::params {
    case $operatingsystem {
        Gentoo: {
            $package_name = 'media-gfx/eog'
            $package_provider = 'portage'
        }
        /(CentOS|RedHat|Fedora)/: {
            $package_name = 'eog'
            $package_provider = 'yum'
        }
        /(Debian|Ubuntu)/: {

        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
