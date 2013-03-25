
class autofs::service {
    service { $autofs::params::server_name:
        ensure     => running,
        enable     => true,
        hasstatus  => true,
        hasrestart => true,
        require    => Class["autofs::install"],
        subscribe  => Class["autofs::config"],
    }
}
