class base::cron-puppet {

        cron { "puppet":
            command => "/usr/bin/puppet apply --modulepath=/etc/puppet/environments/production/modules /etc/puppet/manifests/site.pp",
            user    => "root",
            hour    => "*",
            minute  => "*/5",
        }

}

