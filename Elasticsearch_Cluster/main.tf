provider "aws" {
   region = "${var.aws_region}"
}

resource "aws_elasticsearch_domain" "es" {
  domain_name           = "${var.domain_name}"
  elasticsearch_version = "${var.es_version}"
  cluster_config {
    instance_type            = "${var.instance_type}"
    instance_count           = "${var.instance_count}"
    dedicated_master_enabled = "${var.instance_count >= 3 ? true : false}"
    dedicated_master_count   = "${var.instance_count >= 5 ? 3 : 0}"
    dedicated_master_type    = "${var.dedicated_master_type}"
    zone_awareness_enabled   = "${var.zone_awareness}"
  }
  
  access_policies = <<CONFIG
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "es:*",
            "Principal": "*",
            "Effect": "Allow",
            "Condition": {
                "IpAddress": {"aws:SourceIp": ["66.193.100.22/32"]}
            }
        }
    ]
}
CONFIG

  vpc_options {
    security_group_ids = "${var.security_group_ids}"
    subnet_ids         = "${var.subnet_ids}"
  }

    ebs_options {
    ebs_enabled = "${var.ebs_enabled }"
    volume_size = "${var.ebs_volume_size}"
    volume_type = "${var.ebs_volume_type}"
  }
  snapshot_options {
    automated_snapshot_start_hour = "${var.snapshot_start_hour}"
  }
  tags {
    Domain = "${var.domain_name}"
  }
}
  
