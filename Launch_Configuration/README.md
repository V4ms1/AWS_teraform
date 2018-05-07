# Aws Launch Configuration
A Terraform module to launch Aws Launch Configuration.

## Usage
```
module "aws_launch_configuration" {
  source               = "git::ssh://git@github.com/opstree-terraform/launch_configuration"
  name                 = "test-lc"
  lc_name              = "example-lc"
  image_id             = ""
  instance_type        = "t2.micro"
  key_name             = ""
  aws_region           = "us-east1"
  security_groups      = ["sg-12345678"]
  root_volume_type     = "gp2"
  root_volume_size     = "10"
  iam_instance_profile = ""
}
```

## Variables
|Variables | Description|
|----------|------------|
|create_lc | Whether to create launch configuration|
|name | Creates a unique name beginning with the specified prefix|
|lc_name | Creates a unique name for launch configuration beginning with the specified prefix|
|image_id | The EC2 image ID to launch|
|instance_type | The size of instance to launch|
|iam_instance_profile | The IAM instance profile to associate with launched instances|
|key_name | The key name that should be used for the instance|
|security_groups | A list of security group IDs to assign to the launch configuration|
|associate_public_ip_address | Associate a public ip address with an instance in a VPC|
|enable_monitoring | Enables/disables detailed monitoring. This is enabled by default.|
|user_data | The user data to provide when launching the instance|
|placement_tenancy | The tenancy of the instance. Valid values are 'default' or 'dedicated'|
|ebs_optimized | If true, the launched EC2 instance will be EBS-optimized|
|launch_configuration | The name of the launch configuration to use (if it is created outside of this module)|
|root_volume_type | The volume type of instances|
|root_volume_size | The volume size of instances|

## Outputs
|Output| Description|
|------|------------|
|this_launch_configuration_id|The ID of the launch configuration|
|this_launch_configuration_name|The name of the launch configuration|
