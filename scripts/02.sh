
#this script must run under root or sudo(user must be in sudoers list)because cron don't give permisiion for users to change crontab file

echo 'apt-get update >> /var/log/update_script.log && apt-get upgrade >> /var/log/update_script.log' >> ~/updatescript.sh

#command below will add task for root

echo '0 4 * * 1 ~/updatescript.sh' >> /var/spool/cron/crontabs/root && service cron reload
#echo '0 4 * * 1 ~/updatescript.sh' >> /etc/crontab && service cron reload
#echo '0 4 * * 1 ~/updatescript.sh' | crontab 