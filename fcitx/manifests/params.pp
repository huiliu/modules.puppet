
class fcitx::params {
    case $operatingsystem {
        Gentoo: {
            $package_name = 'app-i18n/fcitx'
            $package_provider = 'portage'
        }
        default: {
            fail("Unrecognized the operate system!")
        }
    }
}
