
class passenger::install {
    package { $passenger::params::passenger_package_name:
        ensure   => present,
        provider => $passenger::params::passenger_package_provider,
    }

    package { $passenger::params::passenger_apache_package_name:
        ensure => present,
    }

    package { $passenger::params::passenger_puppetmaster_package_name:
        ensure => present,
    }
}
