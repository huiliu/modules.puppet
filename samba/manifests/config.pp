
class samba::config {
    File {
        owner => 'root',
        group => 'root',
        mode  => 0644,
    }

    file { $samba::params::samba_service_config:
        ensure  => present,
        source  => "puppet:///modules/${module_name}/smb.conf",
        require => Class["samba::install"],
        notify  => Class["samba::service"],
    }
}
