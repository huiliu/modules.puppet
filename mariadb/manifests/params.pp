
class mariadb::params {
    case $operatingsystem {
        Gentoo: {
            $mariadb_package_name = 'dev-db/mariadb'
            $mariadb_package_provider = 'portage'
        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
