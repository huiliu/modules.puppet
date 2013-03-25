
class syslogng::config {

    file { $syslogng::params::config_file:
        ensure  => present,
        source  => "puppet:///modules/${module_name}/syslog-ng.conf",
        require => Class["syslogng::install"],
    }
}
