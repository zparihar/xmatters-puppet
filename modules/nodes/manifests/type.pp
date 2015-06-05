class nodes::type{
	case $role {
     		"web_server" : {
       			include base
     		}
   	}
	case $role {
      		"java_server" : {
       			include base
     		}
   	}
}
