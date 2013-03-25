

class samba::service {
    service { $samba::params::samba_service_name:
        ensure     => running,
        enable     => true,
        hasstatus  => true,
        hasrestart => true,
        require    => Class["samba::install"],
        subscribe  => Class["samba::config"],
    }
}
