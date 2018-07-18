//ec2-launch
variable "region" {
  default = "us-west-1"
}

variable "instance_size" {
  default = "t2.medium"
}

variable "amis" {
  type = "map"

  default = {
    "us-west-1" = "ami-c6151ba6"
  }
}

// kms
variable "alias_name" {
  description = "The name of the key alias"
  type        = "string"
  default     = "kms-key"
}

variable "deletion_window_in_days" {
  description = "The duration in days after which the key is deleted after destruction of the resource"
  type        = "string"
  default     = 7
}

variable "description" {
  description = "The description of this KMS key"
  type        = "string"
  default     = "encrytion done using KMS"
}

variable "environment" {
  description = "The environment this KMS key belongs to"
  type        = "string"
  default     = ""
}

variable "key_policy" {
  description = "The policy of the key usage"
  type        = "string"
  default     = ""
}

//ebs_volume
variable "device_name" {
  default = "/dev/xvdb"
}

variable "aws_instance_id" {
  default = ""
}

variable "availability_zone" {
  default = "us-west-1a"
}

variable "volume_size" {
  default = "20"
}

variable "volume_type" {
  default = "gp2"
}
