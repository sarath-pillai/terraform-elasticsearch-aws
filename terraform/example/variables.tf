variable "domain" {
  default     = ""
  description = "Elastic Search Domain Name"
  type        = "string"
}

variable "region" {
  default     = "us-east-1"
  description = "AWS Region"
  type        = "string"
}

variable "dedicated_master_type" {
  default     = "t2.small.elasticsearch"
  description = "Dedicated Master Instance Type"
  type        = "string"
}
 
variable "elasticsearch_version" {
  default     = "6.2"
  description = "Elastic Search Version"
  type        = "string"
}

variable "data_node_type" {
  default     = "t2.small.elasticsearch"
  description = "Elastic Search Data Node Instance Type"
  type        = "string"
}

variable "data_instance_count" {
  default     = "1"
  description = "Number of Data Nodes"
  type        = "string"
}

variable "dedicated_master" {
  default     = false
  description = "Enable/Disable Dedicated Masters"
  type        = "string"
}

variable "dedicated_master_count" {
  default     = 0
  description = "Number of dedicated Masters"
  type        = "string"
}

variable "zone_awareness" {
  default     = false
  description = "Enable/Disable MultiZone"
  type        = "string"
}

variable "rest_action_multi_allow_explicit_index" {
  default     = true
  description = "Advanced Options for permitting Rest Actions"
  type        = "string"
}

variable "indices_fielddata_cache_size" {
  default     = ""
  description = "Field data heap size in percentage"
  type        = "string"
}

variable "indices_query_bool_max_clause_count" {
  default     = 1024
  description = "Maximum Permitted Clauses"
  type        = "string"
}

variable "ebs_enabled" {
  default     = true
  description = "Underlying Storage volume"
  type        = "string"
}

variable "volume_type" {
  default     = "gp2"
  description = "Type of EBS volume"
  type        = "string"
}

variable "volume_size" {
  default     = "25"
  description = "Disk Size"
  type        = "string"
}

variable "automated_snapshot_start_hour" {
  default     = 0
  description = "Snapshot Start Hour"
  type        = "string"
}

variable "environment_name" {
  default     = "Dev"
  description = "Environment Name"
  type        = "string"
}

variable "aws_security_gids" {
  default     = []
  description = "Security Group IDs that will be assigned to elasticsearch cluster"
  type = "list"
}

variable "subnet_ids" {
  default     = []
  description = "Subnet Ids in the vpc for elasticsearch cluster"
  type = "list"
}
