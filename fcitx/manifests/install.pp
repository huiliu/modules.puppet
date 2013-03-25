
class fcitx::install {
    package { $fcitx::params::package_name:
        ensure   => present,
        provider => $fcitx::params::package_provider,
    }
}
