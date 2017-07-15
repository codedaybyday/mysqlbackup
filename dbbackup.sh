ql data backup script
#
# use mysqldump --help,get more detail.
#
BackDir=/usr/share/nginx/mysqlbackup 
LogFile=/usr/share/nginx/mysqlbackup/mysqlbackup.log
DATE=`date +%Y%m%d%H%M%S`
echo " " >> $LogFile
echo " " >> $LogFile
echo "-------------------------------------------" >> $LogFile 
echo $(date +"%y-%m-%d %H:%M:%S") >> $LogFile 
echo "--------------------------" >> $LogFile 
cd $BackDir
DumpFile=$DATE.sql
GZDumpFile=$DATE.sql.tar.gz
mysql -u root -p0772981057lbj  --database -h 127.0.0.1 blog> $DumpFile
echo "Dump Done" >> $LogFile
tar czvf $GZDumpFile $DumpFile >> $LogFile 2>&1 
echo "[$GZDumpFile]Backup Success!" >> $LogFile 
rm -f $DumpFile 
#cd $BackDir/daily
cd $BackDir   
echo "Backup Done!"
echo "please Check $BackDir Directory!"
echo "copy it to your local disk or ftp to somewhere !!!"
