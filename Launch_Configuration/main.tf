resource "aws_launch_configuration" "this" {
  count = "${var.create_lc}"

  name_prefix                 = "${coalesce(var.lc_name, var.name)}-"
  image_id                    = "${lookup(var.image_id, var.aws_region)}"
  instance_type               = "${var.instance_type}"
  iam_instance_profile        = "${var.iam_instance_profile}"
  key_name                    = "${var.key_name}"
  security_groups             = ["${var.security_groups}"]
  associate_public_ip_address = "${var.associate_public_ip_address}"
  user_data                   = "${var.user_data}"
  enable_monitoring           = "${var.enable_monitoring}"
  placement_tenancy           = "${var.placement_tenancy}"
  ebs_optimized               = "${var.ebs_optimized}"

  root_block_device {
    volume_type           = "${var.root_volume_type}"
    volume_size           = "${var.root_volume_size}"
    delete_on_termination = "true"
  }

  lifecycle {
    create_before_destroy = true
  }
}
