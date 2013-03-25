
class syslogng::params {
    case $operatingsystem {
        Gentoo: {
            $package_name = 'app-admin/syslog-ng'
            $package_provider = 'portage'
            $config_file = '/etc/syslog-ng/syslog-ng.conf'
        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
