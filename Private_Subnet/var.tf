variable "vpc_id" {
  default = ""
}

variable "aws_region" {
  default = "us-east-1"
}

variable "cidr" {
  default = "10.10.35.0/20"
}

variable "pvt_sub_name" {
  default = "private_subnet"
}

variable "pvt_route_table_id" {
  default =""
}
