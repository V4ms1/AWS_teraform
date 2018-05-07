variable "create_lc" {
  description = "Whether to create launch configuration"
  default     = true
}

variable "aws_region" {}

variable "name" {
  description = "Creates a unique name beginning with the specified prefix"
  default     = "test"
}

variable "lc_name" {
  description = "Creates a unique name for launch configuration beginning with the specified prefix"
  default     = "lcl"
}

variable "image_id" {
    type = "map"
    default = {
        us-east-1 = "ami-66506c1c"
    }
}

variable "instance_type" {
  description = "The size of instance to launch"
  default     = ""
}

variable "iam_instance_profile" {
  description = "The IAM instance profile to associate with launched instances"
  default     = ""
}

variable "key_name" {
  description = "The key name that should be used for the instance"
  default     = ""
}

variable "security_groups" {
  description = "A list of security group IDs to assign to the launch configuration"
  type        = "list"
  default     = [""]
}

variable "associate_public_ip_address" {
  description = "Associate a public ip address with an instance in a VPC"
  default     = false
}

variable "enable_monitoring" {
  description = "Enables/disables detailed monitoring. This is enabled by default."
  default     = false
}

variable "user_data" {
  description = "The user data to provide when launching the instance"
  default     = ""
}

variable "placement_tenancy" {
  description = "The tenancy of the instance. Valid values are 'default' or 'dedicated'"
  default     = "default"
}

variable "ebs_optimized" {
  description = "If true, the launched EC2 instance will be EBS-optimized"
  default     = false
}

variable "root_block_device" {
  description = "Customize details about the root block device of the instance"
  type        = "list"
  default     = []
}

variable "ebs_block_device" {
  description = "Additional EBS block devices to attach to the instance"
  type        = "list"
  default     = []
}

variable "launch_configuration" {
  description = "The name of the launch configuration to use (if it is created outside of this module)"
  default     = ""
}

variable "root_volume_type" {
  default = "gp2"
}

variable "root_volume_size" {
  default = ""
}
