
class tmux::install {
    package { $tmux::params::package_name:
        ensure   => present,
        provider => $tmux::params::package_provider,
    }
}
