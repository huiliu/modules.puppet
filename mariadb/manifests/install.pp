

class mariadb::install {
    package { $mariadb::params::mariadb_package_name:
        ensure   => present,
        provider => $mariadb::params::mariadb_package_provider,
    }
}
