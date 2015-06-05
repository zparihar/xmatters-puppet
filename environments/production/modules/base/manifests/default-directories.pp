class base::default-directories {

        file { "/data":
                ensure => "directory",
                owner  => "root",
                group  => "root",
                mode   => 755,
        }

}

