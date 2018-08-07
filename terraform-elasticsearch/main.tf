resource "aws_elasticsearch_domain" "es" {
  domain_name           = "${var.domain}"
  elasticsearch_version = "${var.elasticsearch_version}"
  cluster_config {
    instance_type  = "${var.data_node_type}"
    instance_count = "${var.data_instance_count}"
    dedicated_master_enabled = "${var.dedicated_master}"
    dedicated_master_type = "${var.dedicated_master_type}"
    dedicated_master_count = "${var.dedicated_master_count}"
    zone_awareness = "${var.zone_awareness}"
  }
  advanced_options {
    "rest.action.multi.allow_explicit_index" = "${var.rest_action_multi_allow_explicit_index}"
    "indices.fielddata.cache.size" = "${var.indices_fielddata_cache_size}"
    "indices.query.bool.max_clause_count" = "${var.indices_query_bool_max_clause_count}"
  }
  ebs_options {
    ebs_enabled = "${var.ebs_enabled}"
    volume_type = "${var.volume_type}"
    volume_size = "${var.volume_size}"
  }
  snapshot_options {
    automated_snapshot_start_hour = "${var.automated_snapshot_start_hour}"
  }
  tags {
    Environment = "${var.environment_name}"
  }
}
