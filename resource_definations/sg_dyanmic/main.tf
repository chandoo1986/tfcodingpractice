resource "aws_security_group" "sg-webserver" {
  // vpc_id      = aws_vpc.vpc.id
  vpc_id      = "10.0.0.0/16"
  name        = "webserver"
  description = "Security Group for Web Servers"

  dynamic "ingress" {
    for_each = local.inbound_rules
    content {
      from_port   = ingress.value.port
      to_port     = ingress.value.port
      protocol    = "tcp"
      cidr_blocks = [ingress.value.cidr_block]
    }
  }

  dynamic "egress" {
    for_each = local.outbound_ports
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["10.0.0.0/16"]
    }
  }
}

