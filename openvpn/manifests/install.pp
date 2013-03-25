
class openvpn::install {
    package { $openvpn::params::package_name:
        ensure   => present,
        provider => $openvpn::params::package_provider,
    }
}
