locals {
  ingress_rules = [{
    port = 443
    description = "Ingress rules for port 443"
  },
  {
    port = 8080
    description = "ingress rules for port 8080"
  },
  {
    port = 22
    description = "ingress rules for port 22"
  }]
}
resource "aws_security_group" "dynamic-sg" {
  name = var.security_group_name
  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = local.ingress_rules
    content {
      description = ingress.value.description
      from_port = ingress.value.port
      to_port = ingress.value.port
      protocol = "tcp"
      cidr_blocks = ["202.89.67.95/32"]
    }
  }
  egress {
    description = "egress rule"
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}