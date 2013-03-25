
class autofs::install {
    package { $autofs::params::package_name:
        ensure   => present,
        provider => $autofs::params::package_provider,
    }
}
