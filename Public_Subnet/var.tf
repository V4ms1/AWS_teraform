variable "aws_region" {
  default = "us-east-1"
}

variable "cidr" {
  default = "10.10.31.0/20"
}

variable "pub_sub_name" {
  default = "public_subnet"
}

variable "map_public_ip_on_launch" {
  default = "false"
}

variable "vpc_id" {
  default = ""
}
