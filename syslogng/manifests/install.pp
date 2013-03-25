
class syslogng::install {
    package { $syslogng::params::package_name:
        ensure   => present,
        provider => $syslogng::params::package_provider,
    }
}
