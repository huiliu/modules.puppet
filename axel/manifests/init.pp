
class axel {
    package { "net-misc/axel":
        ensure   => present,
        provider => "portage",
    }
}
