
class mongrel::install {
    package { $mongrel::params::mongrel_package_name:
        ensure   => present,
        provider => $mongrel::params::mongrel_package_provider,
    }
}
