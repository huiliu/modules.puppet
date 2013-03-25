
class crontab::config {
    File {
        owner => 'root',
        group => 'root',
        mode  => 0644,
    }

    file { $crontab::params::crontab_service_config:
        ensure  => present,
        source  => "puppet:///modules/${module_name}/crontab",
        require => Class["crontab::install"],
        notify  => Class["crontab::service"],
    }

    file { $crontab::params::crontab_allow:
        ensure  => absent,
        source  => "puppet:///modules/${module_name}/cron.allow",
        require => Class["crontab::install"],
        notify  => Class["crontab::service"],
    }
}
