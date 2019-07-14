resource "aws_route_table" "r" {
  vpc_id = "${aws_vpc.main.id}"

  tags {
    Name = "main"
  }
}