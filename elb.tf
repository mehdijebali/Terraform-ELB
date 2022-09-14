#AWS ELB Configuration
resource "aws_elb" "tf-elb" {
  name            = var.ELB_NAME
  subnets         = [aws_subnet.levelupvpc-public-1.id, aws_subnet.levelupvpc-public-2.id]
  security_groups = [elb-securitygroup.id]
  
  listener {
    instance_port     = 80
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  cross_zone_load_balancing   = true
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = var.ELB_NAME
  }
}

#Security group for AWS ELB
resource "aws_security_group" "elb-securitygroup" {
  vpc_id      = aws_vpc.levelupvpc.id
  name        = "elb-sg"
  description = "security group for Elastic Load Balancer"
  
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

  tags = {
    Name = "elb-sg"
  }
}

#Security group for the Instances
resource "aws_security_group" "instance-securitygroup" {
  vpc_id      = aws_vpc.levelupvpc.id
  name        = var.INSTANCE_SG_NAME
  description = "security group for instances"
  
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    security_groups = [aws_security_group.elb-securitygroup.id]
  }

  tags = {
    Name = var.INSTANCE_SG_NAME
  }
}