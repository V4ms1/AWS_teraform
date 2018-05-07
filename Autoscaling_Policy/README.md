# Autoscaling Policy
A Terraform module for Aws Autoscaling Policy

## Usage
```
module "asg_policy" {
  source = "git::ssh://git@github.com/opstree-terraform/autoscaling_policy"
  stack_item_fullname      = "application-test"
  policy_name              = "ops"
  asg_name                 = "test-asg"
  adjustment_type          = "PercentChangeInCapacity"
  comparison_operator      = "GreaterThanOrEqualToThreshold"
  cooldown                 = "300"
  evaluation_periods       = "2"
  metric_name              = "CPUUtilization"
  period                   = "120"
  scaling_adjustment       = "4"
  threshold                = "10"
  treat_missing_data       = "breaching"
}
```
