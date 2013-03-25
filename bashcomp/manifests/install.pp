
class bashcomp::install {
    package { $bashcomp::params::package_name:
        ensure   => present,
        provider => $bashcomp::params::package_provider,
    }
}
