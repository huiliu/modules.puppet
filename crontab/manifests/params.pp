
class crontab::params {
    case $operatingsystem {
        Gentoo: {
            $crontab_package_name = "vixie-cron"
            $crontab_service_config = "/etc/crontab"
            $crontab_service_name = "vixie-cron"
            $crontab_allow = "/etc/cron.allow"
        }
        /(CentOS|RedHat|Fedora)/: {
            $crontab_package_name = "cronie"
            $crontab_service_config = "/etc/crontab"
            $crontab_service_name = "crond"
            $crontab_allow = "/etc/cron.allow"
        }
        /(Ubuntu|Debian)/: {
        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
