class django::django {

	require packages

	exec {"/usr/bin/django-admin startproject www":
		require => Package['python-django'],
		creates => "/home/ec2-user/www/www",
		cwd => "/home/ec2-user",
		user => "ec2-user",
	}

}

