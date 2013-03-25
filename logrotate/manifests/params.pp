
class logrotate::params {
    case $operatingsystem {
        Gentoo: {
            $package_name = 'app-admin/logrotate'
            $package_provider = 'portage'
        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
