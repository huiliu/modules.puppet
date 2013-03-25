
class gimp::install {
    package { $gimp::params::package_name:
        ensure   => present,
        provider => $gimp::params::package_provider,
    }
}
