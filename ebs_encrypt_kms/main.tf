provider "aws" {
  region = "${var.region}"
}

// kms
resource "aws_kms_key" "key" {
  description             = "${var.description}"
  key_usage               = "ENCRYPT_DECRYPT"
  policy                  = "${var.key_policy}"
  deletion_window_in_days = "${var.deletion_window_in_days}"
  is_enabled              = true
  enable_key_rotation     = true

  tags {
    Description = "${var.description}"
    Environment = "${var.environment}"
    Name        = "${var.alias_name}"
  }
}

resource "aws_kms_alias" "key_alias" {
  name          = "alias/${var.alias_name}"
  target_key_id = "${aws_kms_key.key.id}"
}

//copy_ami
resource "aws_ami_copy" "ami" {
  name          = "debian-jessie-encrypted"
  description   = "copy of ami-c6151ba6 with root_device encrypted"
  source_ami_id = "${lookup(var.amis, var.region)}"

  source_ami_region = "${var.region}"
  encrypted         = true
  kms_key_id        = "${aws_kms_key.key.arn}"

  tags {
    Name = "debian jessie encrypted"
  }

  lifecycle {
    prevent_destroy = true
  }
}

//ebs-volume launch
resource "aws_ebs_volume" "ebs_volume" {
  availability_zone = "${var.availability_zone}"
  size              = "${var.volume_size}"
  type              = "${var.volume_type}"
  encrypted         = true
  kms_key_id        = "${aws_kms_key.key.arn}"

  tags {
    Name = "encrypt-ebs"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "${var.device_name}"
  volume_id   = "${aws_ebs_volume.ebs_volume.id}"
  instance_id = "${aws_instance.test.id}"
}

// ec2-launch
resource "aws_instance" "test" {
  ami               = "${aws_ami_copy.ami.id}"
  instance_type     = "t2.micro"
  key_name          = "amu-k8s-key"
  availability_zone = "${var.availability_zone}"

  # security_groups             = ["sg-6671e01e"]
  instance_type               = "${var.instance_size}"
  associate_public_ip_address = true

  tags {
    Name = "encrypt-instance"
  }

  user_data = "${file("${path.module}/data/installelastic")}"
}
