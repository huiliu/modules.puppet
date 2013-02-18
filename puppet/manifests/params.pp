
class puppet::params {
    case $operatingsystem {
        Gentoo: {
            $puppet_server_package_name = 'puppet'
            $puppet_server_config = '/etc/puppet/puppet.conf'
            $puppet_server_service = 'puppetmaster'
            $puppet_client_package_name = 'puppet'
            $puppet_client_config = '/etc/puppet/puppet.conf'
            $puppet_client_service = 'puppet'
        }
        /(CentOS|RedHat|Fedora)/: {
            $puppet_server_package_name = 'puppet-server'
            $puppet_server_config = '/etc/puppet/puppet.conf'
            $puppet_server_service = 'puppetmaster'
            $puppet_client_package_name = 'puppet'
            $puppet_client_config = '/etc/puppet/puppet.conf'
            $puppet_client_service = 'puppet'
        }
    }
}
