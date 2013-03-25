
class samba::install {
    package { $samba::params::samba_package_name:
        ensure   => present,
        provider => $samba::params::package_provider,
    }
}
