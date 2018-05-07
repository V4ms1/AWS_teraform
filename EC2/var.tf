variable "subnet_id" {
  default = ""
}

variable "aws_region" {
  default = ""
}

variable "ami" {
    type = "map"
    default = {
        us-east-1 = "ami-66506c1c"
    }
}

variable "number_of_instances" {
  default = "1"
}

variable "type" {
  default = "t2.micro"
}

variable "key_pair_name" {
  default = "new_key"
}

variable "security_group_ids" {
  default = ""
}

variable "user_data" {
  default = ""
}

variable "root_volume_type" {
  default = "gp2"
}

variable "root_volume_size" {
  default = "10"
}

variable "name" {
  default = ""
}
