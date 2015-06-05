class django-webapp::django-webapp {

	require django::packages

	exec {"/usr/bin/django-admin startproject webapp":
		require => Package['python-django'],
		creates => "/home/ec2-user/webapp/webapp",
		cwd => "/home/ec2-user",
		user => "ec2-user",
	}

}

