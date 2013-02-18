
class passenger::params {
    case $operatingsystem {
        Gentoo: {
            $passenger_package_name = 'www-apache/passenger'
            $passenger_package_provider = "portage"
            $passenger_config_dir = ["/etc/puppet/rack", "/etc/puppet/rack/public"]
            $passenger_config_file = "/etc/puppet/rack/config.ru"

            $passenger_puppetmaster_package_name = 'app-admin/puppet'

            $passenger_apache_package_name = 'www-apache/apache'
            $passenger_apache_service = "apache2"
            $passenger_apache_config_file = "/etc/apache2/vhost.d/20-puppetmaster-vhost.conf"
        }
        /(CentOS|RedHat|Fedora)/: {
            #$passenger_package_name = ['rack', 'passenger']
            $passenger_package_name = 'passenger'
            $passenger_package_provider = "gem"
            $passenger_config_dir = ["/etc/puppet/rack", "/etc/puppet/rack/public"]
            $passenger_config_file = "/etc/puppet/rack/config.ru"

            $passenger_puppetmaster_package_name = 'puppet-server'

            $passenger_apache_package_name = "httpd"
            $passenger_apache_service = "httpd"
            $passenger_apache_config_file = "/etc/httpd/conf.d/20-puppetmaster-vhost.conf"
        }
        default: {
            fail("Unrecognized the operate system!")
        }
    }
}
