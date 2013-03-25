
class elinks::install {
    package { $elinks::params::package_name:
        ensure   => present,
        provider => $elinks::params::package_provider,
    }
}
