
#this script must run under root or sudo(user must be in sudoers list)because cron don't give permisiion for users to change crontab file

echo 'apt-get update >> /var/log/update_script.log && apt-get upgrade >> /var/log/update_script.log' >> ~/updatescript.sh

#command below will add task for root

echo '0 4 * * 1 ~/updatescript.sh' >> /var/spool/cron/crontabs/root && service cron reload



#command below will add task for "common crontab". It needs root of course
#it can be used instead of first, not the same, but effect is identical

#echo '0 4 * * 1 ~/updatescript.sh' >> /etc/crontab && service cron reload



#if user not a root permission denied may happen. If it does.t exist, create file /etc/cron.allow
#and add ausername there(not necessary) than use command below

#echo '0 4 * * 1 ~/updatescript.sh' | crontab 

#after using this command in directiry /var/spool/cron/crontabs will be created file /username which contains :

# DO NOT EDIT THIS FILE - edit the master and reinstall.
# (- installed on Sun Mar 11 13:50:48 2018)
# (Cron version -- $Id: crontab.c,v 2.13 1994/01/17 03:20:37 vixie Exp $)
#0 4 * * 1 ~/updatescript.sh


#use crontab -l to check crontab

!!!!!!!!!!!!!!!!!!!!!!!!!!!