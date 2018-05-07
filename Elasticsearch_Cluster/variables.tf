variable "aws_region" {
  description = "Aws Region where es will deploy"
  default     = ""
}
variable "domain_name" {
  description = "Domain name for Elasticsearch cluster"
  default     = ""
}

variable "es_version" {
  description = "Version of Elasticsearch"
  default     = ""
}

variable "instance_type" {
  description = "ES instance type for data nodes in the cluster"
  default     = ""
}

variable "instance_count" {
  description = "Number of data nodes in the cluster"
  default     = ""
}

variable "dedicated_master_type" {
  description = "ES instance type to be used for dedicated masters"
  default     = "false"
}

variable "zone_awareness" {
  description = "Enable zone awareness for Elasticsearch cluster"
  default     = "false"
}

variable "subnet_ids" {
  type        = "list"
  description = "A list of subnet IDs to attach to the ES"
  default     = [""]
}

variable "security_group_ids" {
  description = "List of VPC Subnet IDs for the Elasticsearch domain"
  type        = "list"
  default     = [""]
}

variable "ebs_enabled" {
  description = "Whether EBS volumes are attached to data nodes in the domain"
  default     = "true"
}

variable "ebs_volume_size" {
  description = "Optionally use EBS volumes for data storage by specifying volume size in GB"
  default     = 10
}

variable "ebs_volume_type" {
  description = "Storage type of EBS volumes"
  default     = "gp2"
}

variable "snapshot_start_hour" {
  description = "Hour at which automated snapshots are taken"
  default     = 0
}


