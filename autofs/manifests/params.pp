
class autofs::params {
    case $operatingsystem {
        Gentoo: {
            $package_name = 'net-fs/autofs'
            $package_provider = 'portage'
            $server_name = 'autofs'
        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
