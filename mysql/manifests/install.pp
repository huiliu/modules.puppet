
class mysql::install {
    package { $mysql::params::package_name:
        ensure  => present,
    }

    #user { "mysql":
    #    ensure  => present,
    #    comment => "MySQL user",
    #    gid     => "mysql",
    #    shell   => "/bin/false",
    #    require => Group["mysql"],
    #}

    #group { "mysql":
    #    ensure => present,
    #}
}
