cb database create postgres --name ambari --db-username ambari --db-password password1234 --url jdbc:postgresql://hdpinstance.ci3jj70dqn68.us-east-1.rds.amazonaws.com:5432/ambari --type AMBARI
cb database create postgres --name ranger --db-username ranger --db-password password1234 --url jdbc:postgresql://hdpinstance.ci3jj70dqn68.us-east-1.rds.amazonaws.com:5432/ranger --type RANGER
cb database create postgres --name hivedb --db-username hive --db-password password1234 --url jdbc:postgresql://hdpinstance.ci3jj70dqn68.us-east-1.rds.amazonaws.com:5432/hive --type HIVE

cb blueprint create from-file --file clientclusterha.json --name ClientClusterHA
cb blueprint create from-file --file parentcluster.json --name ParentCluster

cb recipe create from-file --name createusers --file create_user_and_hdfs_dirs.sh --execution-type post-cluster-install
cb recipe create from-file --name backup-hdp-logs --file backup_hdp_logs.sh --execution-type pre-termination

cb credential create aws role-based --name aws-creds --role-arn arn:aws:iam::766232614474:role/CensusCredentialsRole


