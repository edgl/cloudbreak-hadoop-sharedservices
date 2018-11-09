sudo adduser joe;
sudo su hdfs -c 'hdfs dfs -mkdir /user/hive; hdfs dfs -chown hive:hive /user/hive';
sudo su hdfs -c 'hdfs dfs -mkdir /user/joe; hdfs dfs -chown joe:joe /user/joe';
