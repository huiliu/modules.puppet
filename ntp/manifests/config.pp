
class ntp::config {
    File {
        owner   => 'root',
        group   => 'root',
        mode    => 0644,
    }

    file { $ntp::params::ntp_service_config:
        ensure    => present,
        source    => "puppet:///modules/$module_name/ntp.conf",
        require   => Class["ntp::install"],
        notify    => Class["ntp::service"],
    }
}
