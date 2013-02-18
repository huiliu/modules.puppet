
class passenger::config {
    File {
        owner => root,
        group => root,
        mode  => 0644,
    }
    file { $passenger::params::passenger_config_dir:
        ensure => directory,
    }

    file { $passenger::params::passenger_config_file:
        ensure => present,
        source => "puppet:///modules/${module_name}/config.ru",
        owner => puppet,
    }

    file { $passenger::params::passenger_apache_config_file:
        ensure  => present,
        source  => "puppet:///modules/${module_name}/20_puppetmaster_vhost.conf",
        require => [
                    File["$passenger::params::passenger_config_file"],
                    Package["$passenger::params::passenger_apache_package_name"],
                    Package["$passenger::params::passenger_package_name"]
                    ],
        #notify  => Service["$passenger::params::$passenger_apache_service"],
    }
}
