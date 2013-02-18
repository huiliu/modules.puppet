class sudo {
    package { sudo:
        ensure => present,
    }

    if $operatingsystem == "Ubuntu" {
        package { "sudo-ldap":
            ensure  => present,
            require => Package["sudo"],
        }
    }

    file { "/etc/sudoers":
        owner   => "root",
        group   => "root",
        mode    => 0400,
        source  => "puppet:///modules/sudo/sudoers",
        require => Package["sudo"],
    }
}
