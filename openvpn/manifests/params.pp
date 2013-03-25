
class openvpn::params {
    case $operatingsystem {
        Gentoo: {
            $package_name = 'net-misc/openvpn'
            $package_provider = 'portage'
        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
