provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_subnet" "subnet" {
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${var.cidr}"
  availability_zone = "${var.aws_region}a"
  tags {
    Name = "${var.pub_sub_name}"
  }
  map_public_ip_on_launch = "${var.map_public_ip_on_launch}"
}
