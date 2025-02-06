locals {
  ELB_NAME = "tf-elb"
  ASG_NAME = "EC2 instance via LB Autoscaling"
  elb-tags = {
    Name = local.ELB_NAME
    }
}