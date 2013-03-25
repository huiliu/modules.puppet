
class ntfs3g::install {
    package { $ntfs3g::params::package_name:
        ensure   => present,
        provider => $ntfs3g::params::package_provider,
    }
}
