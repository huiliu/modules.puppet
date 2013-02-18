
class passenger::service {
    service { $passenger::params::passenger_apache_service:
        ensure  => running,
        enable  => true,
        require => Package["$passenger::params::passenger_apache_package_name",
                           "$passenger::params::passenger_package_name",
                    "$passenger::params::passenger_puppetmaster_package_name"],
    }
}
