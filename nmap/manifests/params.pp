
class nmap::params {
    case $operatingsystem {
        Gentoo: {
            $package_name = 'net-analyzer/nmap'
            $package_provider = 'portage'
        }
        /(CentOS|RedHat|Fedora)/: {
            $package_name = 'nmap'
            $package_provider = 'yum'
        }
        /(Debian|Ubuntu)/: {

        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
