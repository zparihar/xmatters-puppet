class base::first {

$str = 
"Hello world again zubin and once more
"

         file { "/root/first-pup":
                owner  => root,
                group  => root,
                mode   => 0444,
		content => "$str",
	}

}

