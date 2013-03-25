
class sshfs::install {
    package { $sshfs::params::package_name:
        ensure   => present,
        provider => $sshfs::params::package_provider,
    }
}
