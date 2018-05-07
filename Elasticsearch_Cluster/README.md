# Elasticsearch_Cluster
A Terraform module that launches an Elasticsearch cluster.

## Usage
```
module "elb" {
    source              =    ""
    region              =    "us-east-1"
    domain_name         =    "test-domain"
    es_version          =    "6.0"
    instance_type       =    "t2.medium.elasticsearch"
    instance_count      =    "2"
    subnet_ids          =    [""]
    security_group_ids  =    [""]
    ebs_volume_size     =    10
    ebs_volume_type     =    "gp2"
    snapshot_start_hour =    "0"
}
```

## Variables
| Variables             | Description |
|-----------------------|-------------|
| region                | Aws Region where es will deploy |
| domain_name           | Domain name for Elasticsearch cluster |
| es_version            | Version of Elasticsearch|
| instance_type         | ES instance type for data nodes in the cluster|
| instance_count        | Number of data nodes in the cluster|
| dedicated_master_type | ES instance type to be used for dedicated masters|
| zone_awareness        | Enable zone awareness for Elasticsearch cluster|
| subnet_ids            | A list of subnet IDs to attach to the ES|
| security_group_ids    | List of VPC Subnet IDs for the Elasticsearch domain|
| ebs_enabled           | Whether EBS volumes are attached to data nodes in the domain or not|
| ebs_volume_size       | Optionally use EBS volumes for data storage by specifying volume size in GB|
| ebs_volume_type       | Storage type of EBS volumes|
| snapshot_start_hour   | Hour at which automated snapshots are taken| 

## Output
| Output | Description |
|--------|-------------|
| es_arn | ARN of the ES Cluster |
| es_domain_id | Domain ID of the ES Cluster|
| es_endpoint | Endpoint of the ES Cluster|
