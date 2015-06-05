class nodes::type{

	case $role {
     		"awswebserver" : {
       			include base
       			include django
       			include django-webapp
     		}
   	}

	case $role {
      		"awsproxyserver" : {
       			include base
       			include django
       			include django-proxyapp
     		}
   	}

}

