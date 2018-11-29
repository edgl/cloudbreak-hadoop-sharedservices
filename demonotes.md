
# create s3 buckets and diretories:
s3a://cloudbreak-census/hive/finance
s3a://cloudbreak-census/hive/hr

# create sum dummy data that has two columns (name and id) but don't put the column headers

# create two tables in hive:
create external table finance (name string, id int) 
row format delimited 
fields terminated by ','
stored as textfile
location 's3a://cloudbreak-census/hive/finance/';

create external table hr (name string, id int) 
row format delimited 
fields terminated by ','
stored as textfile
location 's3a://cloudbreak-census/hive/hr/';

# update ranger policies to add joe, hive to hdfs all
# update ranger policies to add joe access to finance table

# launch 2nd transient cluster
cb cluster create --cli-input-json template-child.json --name childcluster2

# while 2nd transient cluster is initializing...
# show ranger hive policies that show finance having policies but hr without any permissions


# login to common cluster
ssh -i cat-temp.pem cloudbreak@18.234.146.88
# do a show tables using hive -- can see finance table
# Show s3 bucket

# login to 1st transient cluster
ssh -i cat-temp.pem cloudbreak@54.227.180.111
# do a show tables using hive -- can see finance table, 
   -- this shows it can see table from common

# Go back to common cluster
# create another table 'hr'
# do a show tables using hive -- can see two tables table

# Go back to 1st transient cluster
# do a show tables using joe, can only see finance table, 
  # go back to ranger to show no policy for joe 

# do a select finance using joe, gets results
# do a select hr using joe, gets denied
   # show ranger audits 

# Go to ranger, add policy to allow joe access to hr
# wait atleast 30 seconds
# do a select hr using joe, gets results
   # show ranger audits 

# If second cluster is up
# login to it and this time as joe, create a third table from finance
  and call it eng

# show s3 bucket
# remove transient clusters



sudo adduser joe
sudo su hdfs -c "hdfs dfs -mkdir /user/hive; hdfs dfs -chown hive:hive /user/hive"
sudo su hdfs -c "hdfs dfs -mkdir /user/joe; hdfs dfs -chown hive:hive /user/joe"