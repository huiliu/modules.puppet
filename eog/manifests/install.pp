
class eog::install {
    package { $eog::params::package_name:
        ensure   => present,
        provider => $eog::params::package_provider,
    }
}
