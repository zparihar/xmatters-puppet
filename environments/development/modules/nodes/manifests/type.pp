class nodes::type{

	case $role {
     		"awswebserver" : {
       			include base
       			include django
     		}
   	}

	case $role {
      		"awsproxyserver" : {
       			include base
       			include django
     		}
   	}

}

