
class nmap::install {
    package { $nmap::params::package_name:
        ensure   => present,
        provider => $nmap::params::package_provider,
    }
}
