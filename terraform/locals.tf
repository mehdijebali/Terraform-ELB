locals {
  ELB_NAME           = "tf-elb"
  ASG_NAME           = "EC2 instance via LB Autoscaling"
  INSTANCE_SG_NAME   = "instance-sg"
  ELB_SG_NAME        = "elb-sg"
  ami-name           = var.LD_NAME == "centos" ? "al2023-template-pkr-*" : "ubuntu-template-pkr-*"
  template-user-data = var.LD_NAME == "centos" ? file("./config/configurenginx_centos.sh") : file("./config/configurenginx_ubuntu.sh")
  elb-tags = {
    Name = local.ELB_NAME
  }
  elb-sg-tags = {
    Name = local.ELB_SG_NAME
  }
  sg-tags = {
    Name = local.INSTANCE_SG_NAME
  }
  default-tags = {
    Stack       = "ELB",
    Environment = "Production"
  }
}