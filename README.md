# Digitalocean-auto-backup
# I took help from digitalocean docs and tutorials.
# The DigitalOcean API lets you programmatically manage your Droplets and other resources using conventional HTTP requests. Any     action that you can perform through the DigitalOcean Control Panel (except for creating personal access tokens) can also be performed with the API.

This can be done via ansible and ruby script

1. Using ansible script



2. Using Rub Script
Downlad the ruby in your system.
This command will install and tell you about installed version of rubi.
curl -sSL https://get.rvm.io | bash -s stable --ruby
After installation
source ~/.rvm/scripts/rvm
and then vim snapshot.rb
This rubi script ( snabshot.rb ) poweroff kvm and snapshot them

This script works by assigning our client ID and API key to environmental variables called DO_CLIENT_ID and DO_API_KEY respectively.

execute the script by:
DO_TOKEN="AAABBB" ./snapshot.rb 123456

and for multiple droplet to take snapshots
DO_TOKEN="AAABBB" ./snapshot.rb 123456 111111 222222 333333

# For the automation of this script i used crontab

first check if our user already using crontab.
#crontab -l
If there is any then took a backup.
# crontab -  > backup

Get the full path of the ruby by command :
which rubi

/home/your_user/.rvm/rubies/ruby-2.1.0/bin/ruby

Now edit the cront tab entry.
Here we have to take a snapshot daiy

10 03 * * * command

this entry will take snapshot daily at 3.10 am every day.

# 10 03 * * *  DO_TOKEN="AAABBB" /home/your_user/.rvm/rubies/ruby-2.1.0/bin/ruby /home/your_user/snapshot.rb drop_id1 drop_id2 ... drop_idx

For deleting the Snapshot

We can write a script sanp-del.rb
very beautifully exaplaned in 
https://github.com/digitalocean/droplet_kit
https://www.digitalocean.com/docs/api/example-usage/



