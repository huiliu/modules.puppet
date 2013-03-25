
class bashcomp::params {
    case $operatingsystem {
        Gentoo: {
            $package_name = 'app-shells/bash-completion'
            $package_provider = 'portage'
        }
        /(CentOS|RedHat|Fedora)/: {
            $package_name = 'bash-completion'
            $package_provider = 'yum'
        }
        /(Debian|Ubuntu)/: {

        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
