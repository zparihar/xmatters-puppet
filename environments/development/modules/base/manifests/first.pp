class base::first {

$str = 
"Hello world again zubin and once more and DEVELOPMENT
"

         file { "/root/first-pup":
                owner  => root,
                group  => root,
                mode   => 0444,
		content => "$str",
	}

}

