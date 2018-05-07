# Aws Autoscaling Group
A Terraform module to launch Autoscaling Group

## Usage
```
module "asg" {
  source = "git::ssh://git@github.com/opstree-terraform/autoscaling_group"
  name = "test"
  asg_name                  = "example-asg"
  vpc_zone_identifier       = ["subnet-1235678", "subnet-87654321"]
  launch_configuration      = ""
  target_group_arns         = []
  health_check_type         = "EC2"
  min_size                  = 0
  max_size                  = 1
  desired_capacity          = 1
  wait_for_capacity_timeout = 0
  key                       = "Environment"
  value                     = "Dev"
}
```

## Variables
|Variables | Description|
|----------|------------|
|create_asg | Whether to create autoscaling group |
|asg_name | Creates a unique name for autoscaling group beginning with the specified prefix |
|name | Creates a unique name beginning with the specified prefix |
|vpc_zone_identifier | A list of subnet IDs to launch resources in |
|max_size | The maximum size of the auto scale group |
|min_size | The minimum size of the auto scale group |
|desired_capacity | The number of Amazon EC2 instances that should be running in the group |
|load_balancers | A list of elastic load balancer names to add to the autoscaling group names |
|health_check_grace_period | Time (in seconds) after instance comes into service before checking health |
|health_check_type | Controls how health checking is done. Values are - EC2 and ELB |
|min_elb_capacity | Setting this causes Terraform to wait for this number of instances to show up healthy in the ELB only on creation|
|wait_for_elb_capacity | Setting this will cause Terraform to wait for exactly this number of healthy instances in all attached load balancers on both create and update operations|
|target_group_arns | A list of aws_alb_target_group ARNs, for use with Application Load Balancing |
|default_cooldown | The amount of time, in seconds, after a scaling activity completes before another scaling activity can start|
|force_delete | Allows deleting the autoscaling group without waiting for all instances in the pool to terminate |
|termination_policies | A list of policies to decide how the instances in the auto scale group should be terminated |
|suspended_processes | A list of processes to suspend for the AutoScaling Group |
|placement_group | The name of the placement group into which you'll launch your instances |
|enabled_metrics | A list of metrics to collect |
|metrics_granularity | The granularity to associate with the metrics to collect |
|wait_for_capacity_timeout | A maximum duration that Terraform should wait for ASG instances to be healthy before timing out|
|protect_from_scale_in | Allows setting instance protection |
|key | A umique tag key for ASG |
|value | A umique tag value for ASG |
|launch_configuration | The name of the launch configuration to use |

## Outputs
|Output | Description |
|-------|-------------|
|this_autoscaling_group_id | The autoscaling group id |
|this_autoscaling_group_name | The autoscaling group name |
|this_autoscaling_group_arn |  The ARN for this AutoScaling Group |
