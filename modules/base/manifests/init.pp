class base {

        include base::first
        include base::default-directories
        include base::mount-partition
#	include base::mountpartition
	include base::cron-puppet

}
