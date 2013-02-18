
class ntp::service {
    service { $ntp::params::ntp_service_name:
        ensure     => running,
        enable     => true,
        hasstatus  => true,
        hasrestart => true,
        require    => Class["ntp::config"],
    }
}
