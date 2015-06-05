# xmatters-puppet


This Puppet Configuration is set up to be Masterless`

To run the puppet config as a Production Server:

/usr/bin/puppet apply --modulepath=/etc/puppet/environments/production/modules /etc/puppet/manifests/site.pp



To run the puppet config as a development Server:

/usr/bin/puppet apply --modulepath=/etc/puppet/environments/development/modules /etc/puppet/manifests/site.pp


After, running either of these, a crontab entry will be placed in order to apply these changes every 5 minutes. (crontab -l)



Since the Puppet configuration is all in GitHUB, it would also be possible to add a crontab so that it checks out from github every few minutes as well.  However, I've left that unconfigured.





