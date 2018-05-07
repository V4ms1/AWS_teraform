variable "adjustment_type" {
  description = "Specifies the scaling adjustment.  Valid values are 'ChangeInCapacity', 'ExactCapacity' or 'PercentChangeInCapacity'."
  default     = ""
}

variable "asg_name" {
  description = "Name of the ASG to associate the alarm with."
  default     = ""
}

variable "cooldown" {
  description = "Seconds between auto scaling activities."
  default     = ""
}

variable "policy_name" {
  description = "Short form identifier for this stack"
  default     = ""
}

variable "policy_type" {
  description = "Policy type for ASG"
  default     = "SimpleScaling"
}

variable "scaling_adjustment" {
  description = "The number of instances involved in a scaling action"
  default     = ""
}

variable "stack_item_fullname" {
  description = "Long form descriptive name for this stack item."
  default     = ""
}

variable "notifications" {
  type        = "list"
  description = "List of events to associate with the auto scaling notification."
  default     = ["autoscaling:EC2_INSTANCE_LAUNCH", "autoscaling:EC2_INSTANCE_TERMINATE", "autoscaling:EC2_INSTANCE_LAUNCH_ERROR", "autoscaling:EC2_INSTANCE_TERMINATE_ERROR"]
}

variable "comparison_operator" {
  description = "Arithmetic operation to use when comparing the thresholds"
  default     = ""
}

variable "evaluation_periods" {
  description = "The number of periods over which data is compared to the specified threshold"
  default     = ""
}

variable "metric_name" {
  description = "Name for the alarm's associated metric"
  default     = ""
}

variable "name_space" {
  description = "The namespace for the alarm's associated metric."
  default     = "AWS/EC2"
}

variable "period" {
  description = "The period in seconds over which the specified statistic is applied"
  default     = ""
}

variable "valid_statistics" {
  type = "map"

  default = {
    Average     = "Average"
    Maximum     = "Maximum"
    Minimum     = "Minimum"
    SampleCount = "SampleCount"
    Sum         = "Sum"
  }
}

variable "statistic" {
  description = "The statistic to apply to the alarm's associated metric."
  default     = "Average"
}

variable "threshold" {
  description = "The value against which the specified statistic is compared."
  default     = ""
}

variable "valid_missing_data" {
  type = "map"

  default = {
    missing      = "missing"
    ignore       = "ignore"
    breaching    = "breaching"
    notBreaching = "notBreaching"
  }
}

variable "treat_missing_data" {
  description = "You can specfy how alarms handle missing data points.  "
  default     = "breaching"
}
