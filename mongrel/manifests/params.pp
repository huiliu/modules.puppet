
class mongrel::params {
    case $operatingsystem {
        Gentoo: {
            $mongrel_package_name = 'www-servers/mongrel'
            $mongrel_package_provider = 'portage'
        }
        /(CentOS|RedHat|Fedora)/: {
            $mongrel_package_name = 'rubygem-mongrel'
            $mongrel_package_provider = 'yum'
        }
        default: {
            fail("Unrecognize operate system!")
        }
    }
}
