domain = "example"
elasticsearch_version = "6.2"
data_node_type = "t2.small.elasticsearch"
data_instance_count = "1"
dedicated_master = false
dedicated_master_count = 0
zone_awareness = false
rest_action_multi_allow_explicit_index = "true"
indices_fielddata_cache_size = "20"
indices_query_bool_max_clause_count = "1024"
ebs_enabled = true
region = "us-east-1"
volume_type = "gp2"
volume_size = "30"
automated_snapshot_start_hour = "0"
environment_name = "test"
aws_security_gids = ["sg-49872402"]
subnet_ids = ["subnet-ee5a39a4"]
