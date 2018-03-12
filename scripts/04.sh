#default email will be root@hostname
email="root@debian"


#create this file once before run script
#md5sum /etc/crontab | cut -d " " -f 1 > ~/crontabsum

md5sum /etc/crontab | cut -d " " -f 1 > ~/newcrontabsum

res=$(diff ~/crontabsum ~/newcrontabsum)

echo 'suck' > ~/testfile

if [ "$res" ];then
	md5sum /etc/crontab | cut -d " " -f 1 > ~/crontabsum
	mail -s "Crontab was changed" $email < ~/crontabsum
	#or command  below in case you want send to root (the same effect)
	#mail -s "Crontab was changed" root@localhost.com < ~/crontabsum
fi

#use command below to add a task to cron
#echo '0 0 * * * ~/04.sh' >> /etc/crontab && service cron reload





