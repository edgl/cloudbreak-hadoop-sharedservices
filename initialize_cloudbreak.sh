cb database create postgres --name ambari --db-username ambari --db-password password1234 --url jdbc:postgresql://hdp.cc76odpkz8em.us-east-1.rds.amazonaws.com:5432/ambari --type AMBARI
cb database create postgres --name ranger --db-username ranger --db-password password1234 --url jdbc:postgresql://hdp.cc76odpkz8em.us-east-1.rds.amazonaws.com:5432/ranger --type RANGER
cb database create postgres --name hivedb --db-username hive --db-password password1234 --url jdbc:postgresql://hdp.cc76odpkz8em.us-east-1.rds.amazonaws.com:5432/hive --type HIVE

cb blueprint create from-file --file clientclusterha.json --name ClientClusterHA
cb blueprint create from-file --file parentcluster.json --name ParentCluster
