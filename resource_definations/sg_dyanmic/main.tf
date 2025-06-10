resource "aws_subnet" "myvpcsubnets" {
  cidr_block = "10.0.0.0/20"
  vpc_id    = "10.0.0.0/16"
}
