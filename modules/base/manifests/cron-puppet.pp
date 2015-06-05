class base::cron-puppet {

        cron { "puppet":
            command => "/usr/bin/puppet apply /etc/puppet/manifests/site.pp",
            user    => "root",
            hour    => "*",
            minute  => "*/30",
        }

}

