variable "type" {
  default = "ingress"
}

variable "to_port" {
  default = ""
}

variable "from_port" {
  default = ""
}

variable "protocol" {
  default = "TCP"
}

variable "cidr_block" {
  default = "0.0.0.0/0"
}

variable "security_group_id" {
  default = ""
}
