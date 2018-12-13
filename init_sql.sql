\c postgres
drop database if exists  ambari; 
create database ambari;
create role ambari with password 'password1234';
alter role ambari with login;
grant all on database ambari to ambari;
drop database if exists hive;
create database hive;
create role hive with password 'password1234';
alter role hive with login;
grant all on database hive to hive;
drop database if exists ranger;
create database ranger;
create role ranger with password 'password1234';
alter role ranger with login;
grant all on database ranger to ranger;
