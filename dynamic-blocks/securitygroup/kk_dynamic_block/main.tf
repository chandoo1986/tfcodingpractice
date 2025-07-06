data "aws_vpc" "myvpc" {
  tags = {
    Name = "chandra-vpc"
    }
}

resource "aws_security_group" "sanbox_sg" {
  name   = "sandbox_sg"
  vpc_id = data.aws_vpc.myvpc.id

  dynamic "ingress" {
    for_each = var.settings
    iterator = sandbox_sg_ingress

    content {
      description = sandbox_sg_ingress.value["description"]
      from_port   = sandbox_sg_ingress.value["port"]
      to_port     = sandbox_sg_ingress.value["port"]
      protocol    = "tcp"
      cidr_blocks = [data.aws_vpc.mpvpc.cidr_block]
    }
  }

  tags = {
  Name = "sandbox_sg" }
}
