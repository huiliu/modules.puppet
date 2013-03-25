
class rdesktop::install {
    package { $rdesktop::params::package_name:
        ensure   => present,
        provider => $rdesktop::params::package_provider,
    }
}
