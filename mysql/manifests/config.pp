
class mysql::config {
    file { "/etc/mysql/my.cnf":
        ensure  => present,
        source  => "puppet:///modules/mysql/my.cnf",
        owner   => "mysql",
        group   => "mysql",
        require => Class["mysql::install"],
        notify  => Class["mysql::service"],
    }
}
