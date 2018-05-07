resource "aws_instance" "instance" {
  ami                    = "${lookup(var.ami, var.aws_region)}"
  count                  = "${var.number_of_instances}"
  subnet_id              = "${var.subnet_id}"
  instance_type          = "${var.type}"
  key_name               = "${var.key_pair_name}"
  vpc_security_group_ids = ["${var.security_group_ids}"]
  user_data              = "${var.user_data}" 


  root_block_device {
    volume_type           = "${var.root_volume_type}"
    volume_size           = "${var.root_volume_size}"
    delete_on_termination = "true"
  }

  tags {
    Name = "${var.name}"
  }
}
