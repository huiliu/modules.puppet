
class nginx::params {
    case $operatingsystem {
        Gentoo: {
            $nginx_package_name = "www-servers/nginx"
            $nginx_service_name = "nginx"
        }
        /(CentOS|RedHat|Fedora)/: {
            $nginx_package_name = "nginx"
            $nginx_service_name = "nginx"
        }
        /(Ubuntu|Debian)/: {
        }
        default: {
            fail("Unrecognized operate system!")
        }
    }
}
