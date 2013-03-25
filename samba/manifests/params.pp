
class samba::params {
    case $operatingsystem {
        Gentoo: {
            $samba_package_name = "net-fs/samba"
            $samba_service_config = "/etc/samba/smb.conf"
            $samba_service_name = "samba"
            $package_provider = 'portage'
        }
        /(CentOS|RedHat|Fedora)/: {
        }
        /(Ubuntu|Debian)/: {
        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
