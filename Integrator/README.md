# Integrator2
A terraform module that create vpc, subnets, route tables, alb, launch configuration, auto-scaling group and autoscaling policies.

## Usage
As it is a module so we don't have to dp any complicated thing, simply all modules are defined we just have to put variables.
- Use this command to load modules and plugins
```
terraform init
```
- After this plan your infra by
```
terraform plan
```
- After this you can apply the configuration by
```
terraform apply
```

## Variables
|Variables | Description |
|----------|-------------|
|aws_region | The full name of the region to select|
|vpc_name | The full name of the vpc |
|cidr | The CIDR block for the VPC |
|route53_zone_name | The Hosted Zone name of the desired Hosted Zone |
|pub_key_path | The path of your ssh key file |
|pub_sn_aza_cidr | The CIDR block for the public subnet of AZA.|
|pub_sn_aza_name | The name for the public subnet of AZA.|
|pub_sn_azb_cidr | The CIDR block for the public subnet of AZB.|
|pub_sn_azb_name | The name for the public subnet of AZB.|
|priv_sn_aza_cidr | The CIDR block for the private subnet of AZA.|
|priv_sn_aza_name | The name for the private subnet of AZA.|
|priv_sn_azb_cidr | The CIDR block for the private subnet of AZB.|
|priv_sn_azb_name | The name for the private subnet of AZB.|
|db_sn_aza_cidr | The CIDR block for the db subnet of AZA.|
|db_sn_aza_name | The name for the db subnet of AZA.|
|db_sn_azb_cidr | The CIDR block for the db subnet of AZB.|
|db_sn_azb_name | The name for the db subnet of AZB.|
|alb_name | The name of the LB. This name must be unique within your AWS account |
|db_alb_name | The name of the DB LB. This name must be unique within your AWS account |
|launch_configuration_name |The name of the launch configuration |
|lc_name | Creates a unique name for launch configuration beginning with the specified prefix |
|image_id | The EC2 image ID to launch |
|instance_type | The size of instance to launch |
|key | A umique tag key for ASG |
|value | A umique tag value for ASG |
