resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr_block

  tags = {
    Name = var.name
  }
}
