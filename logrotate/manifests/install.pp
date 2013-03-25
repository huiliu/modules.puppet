
class logrotate::install {
    package { $logrotate::params::package_name:
        ensure   => present,
        provider => $logrotate::params::package_provider,
    }
}
