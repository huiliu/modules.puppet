
class ntp::params {
    case $operatingsystem {
        /(Solaris|Gentoo)/: {
            $ntp_package_name = 'ntp'
            $ntp_service_config = '/etc/ntp.conf'
            $ntp_service_name = 'ntpd'
        }
        /(Debian|Ubuntu)/: {
            $ntp_package_name = 'ntp'
            $ntp_service_config = '/etc/ntp.conf'
            $ntp_service_name = 'ntpd'
        }
        /(RedHat|CentOS|Fedora)/: {
            $ntp_package_name = 'ntp'
            $ntp_service_config = '/etc/ntp.conf'
            $ntp_service_name = 'ntpd'
        }
        default: {
            fail("Unrecognized operating system!")
        }
    }
}
