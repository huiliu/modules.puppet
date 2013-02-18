

class crontab::service {
    service { $crontab::params::crontab_service_name:
        ensure     => running,
        enable     => true,
        hasstatus  => true,
        hasrestart => true,
        require    => Class["crontab::install"],
        subscribe  => Class["crontab::config"],
    }
}
