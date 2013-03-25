
class libvirt::install {
    package { $libvirt::params::package_name:
        ensure   => present,
        provider => $libvirt::params::package_provider,
    }
}
