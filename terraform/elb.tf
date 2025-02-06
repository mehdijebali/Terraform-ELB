#AWS ELB Configuration
resource "aws_elb" "tf-elb" {
  name            = var.ELB_NAME
  subnets         = [module.network.public_subnet_A_id, module.network.public_subnet_B_id]
  security_groups = [aws_security_group.elb-securitygroup.id]

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

  tags = local.elb-tags
}

