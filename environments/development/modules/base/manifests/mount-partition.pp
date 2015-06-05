class base::mount-partition {

	require default-directories

	mount { "/data":
		device  => "/dev/xvdb1",
		fstype  => "xfs",
		ensure  => "mounted",
		options => "defaults",
		atboot  => "true",
	}
}

