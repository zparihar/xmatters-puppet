class django::packages {
        $required_packages = [
                "python",
        ]

        package { $required_packages:
                ensure  => latest,
        }

	Package {
		allow_virtual => true,
	}


	if (($operatingsystem == 'RedHat') or ($operatingsystem == 'CentOS')){
		if $operatingsystemmajrelease == '7' {
                        package { 'python-django-bash-completion':
                                ensure => installed,
                                provider => 'rpm',
                                source => '/tmp/python-django-bash-completion-1.8-1.el7.centos.noarch.rpm',
                                require  => File["/tmp/python-django-bash-completion-1.8-1.el7.centos.noarch.rpm"],
                        }
                        file { "/tmp/python-django-bash-completion-1.8-1.el7.centos.noarch.rpm":
                                source => 'puppet:///modules/django/python-django-bash-completion-1.8-1.el7.centos.noarch.rpm',
                                links => follow,
                        }
                        package { 'python-django':
                                ensure => installed,
                                provider => 'rpm',
                                source => '/tmp/python-django-1.8-1.el7.centos.noarch.rpm',
                                require  => [ File["/tmp/python-django-1.8-1.el7.centos.noarch.rpm"], Package['python-django-bash-completion'] ]
#				require => Package['python-django-bash-completion'],
                        }
                        file { "/tmp/python-django-1.8-1.el7.centos.noarch.rpm":
                                source => 'puppet:///modules/django/python-django-1.8-1.el7.centos.noarch.rpm',
                                links => follow,
                        }
                }

	}
}
