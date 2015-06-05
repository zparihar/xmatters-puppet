class django-proxyapp::django-proxyapp {

	require django::packages

	exec {"/usr/bin/django-admin startproject proxyapp":
		require => Package['python-django'],
		creates => "/home/ec2-user/proxyapp/proxyapp",
		cwd => "/home/ec2-user",
		user => "ec2-user",
	}

}

