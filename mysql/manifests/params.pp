
class mysql::params {
    case $operatingsystem {
        /(CentOS|RedHat|Fedora)/: {
            $package_name = ['mysql-server', 'mysql-test']
            $package_provider = 'yum'
        }
        /(Ubuntu|Dedian)/: {

        }
        Gentoo: {
            $package_name = 'dev-db/mysql'
            $package_provider = 'portage'
        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
