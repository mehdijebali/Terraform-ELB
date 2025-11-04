#Security group for AWS ELB
resource "aws_security_group" "elb-securitygroup" {
  vpc_id      = module.network.vpc_id
  name        = local.ELB_SG_NAME
  description = var.ELB_SG_DESCRIPTION

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = local.elb-sg-tags
}

#Security group for the Instances
resource "aws_security_group" "instance-securitygroup" {
  vpc_id      = module.network.vpc_id
  name        = local.INSTANCE_SG_NAME
  description = var.INSTANCE_SG_DESCRIPTION

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.elb-securitygroup.id]
  }

  tags = local.sg-tags
}