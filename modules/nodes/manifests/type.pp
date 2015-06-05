class nodes::type{

	case $role {
     		"awswebserver" : {
       			include base
     		}
   	}

	case $role {
      		"awsproxyserver" : {
       			include base
     		}
   	}

}

