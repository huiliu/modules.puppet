
class autofs::config {
    File {
        owner => 'root',
        group => 'root',
        mode  => 0644,
    }

    file { "/etc/autofs/auto.master":
        ensure  => present,
        source  => "puppet:///modules/${module_name}/auto.master",
        require => Class["autofs::install"],
        notify  => Class["autofs::service"],
    }

    file { "/etc/autofs/auto.misc":
        ensure  => present,
        source  => "puppet:///modules/${module_name}/auto.misc",
        require => Class["autofs::install"],
        notify  => Class["autofs::service"],
    }
}
