\c hive
drop database ambari;
create database ambari;
grant all on database ambari to ambari;
\c ambari
drop database hive;
create database hive;
grant all on database hive to hive;
drop database ranger;
create database ranger;
grant all on database ranger to ranger;

