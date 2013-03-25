
class git::install {
    package { $git::params::package_name:
        ensure   => present,
        provider => $git::params::package_provider,
    }
}
