class django::epel {

	yumrepo { "epel": 
		descr => "Extra Packages for Enterprise Linux \$releasever - \$basearch", 
#		baseurl => "http://mirror.its.sfu.ca/mirror/CentOS-Third-Party/epel/\$releasever/\$basearch", 
#		baseurl => "http://download.fedoraproject.org/pub/epel/\$releasever/\$basearch", 
		#mirrorlist => "https://mirrors.fedoraproject.org/metalink?repo=epel-\$releasever&arch=\$basearch",
		mirrorlist => "https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=\$basearch",
		gpgcheck => 1, 
		gpgkey  => "http://mirror.its.sfu.ca/mirror/CentOS-Third-Party/epel/RPM-GPG-KEY-EPEL", 
		enabled => 1, 
	}
}


