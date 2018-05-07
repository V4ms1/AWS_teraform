variable "aws_access_key" {
  default = ""
}

variable "aws_secret_key" {
  default = ""
}

variable "vpc_name" {
  default     = "test-vpc"
  description = "This a test VPC for hands on"
}

variable "cidr" {
  default   = "10.0.0.0/24"
}



