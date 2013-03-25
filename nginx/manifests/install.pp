
class crontab::install {
    package { $crontab::params::crontab_package_name:
        ensure => present,
    }
}
