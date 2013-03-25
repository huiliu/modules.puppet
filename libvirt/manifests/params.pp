
class libvirt::params {
	case $operatingsystem {
		Gentoo: {
			$package_name='app-emulation/libvirt'
			$package_provider = 'portage'
		}
		/(CentOS|RedHat|Fedora)/: {
			$package_name='libvirt'
			$package_provider = 'yum'
		}
		/(Debian|Ubuntu)/:{
			$package_name='libvirt'
			$package_provider = 'apt'
		}
		default: {
		    fail("Unrecognized operate system!")
		}
	}
}
