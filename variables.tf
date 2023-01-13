variable "AWS_REGION" {
default = "us-east-1"
}

variable "AMI_ID" {
  default = "ami-09d3b3274b6c5d4aa"
}

variable "PATH_TO_PRIVATE_KEY" {
  default = "levelup_key"
}

variable "PATH_TO_PUBLIC_KEY" {
  default = "levelup_key.pub"
}

variable "INSTANCE_TYPE" {
  default = "t2.micro"
}

variable "LAUNCH_TEMPLATE_NAME" {
  default = "tf-launchtemplate"
}

variable "KEY_NAME" {
  default = "tf-ssh-key"
}

variable "AUTOSCALING_GROUP_NAME" {
  default = "tf-autoscaling"
}

variable "AUTOSCALING_GROUP_MIN_SIZE" {
  default = 2
}

variable "AUTOSCALING_GROUP_MAX_SIZE" {
  default = 2
}

variable "HEALTH_CHECK_GRACE_PERIOD" {
  default = 200
}

variable "HEALTH_CHECK_TYPE" {
  default = "ELB"
}

variable "ELB_NAME" {
  default = "tf-elb"
}

variable "ELB_SG_NAME" {
  default = "elb-sg"
}

variable "INSTANCE_SG_NAME" {
  default = "instance-sg"
}

variable "INSTANCE_SG_DESCRIPTION" {
  default = "security group for instances"
}

variable "ELB_SG_DESCRIPTION" {
  default = "security group for Elastic Load Balancer"
}

variable "VPC_NAME" {
  default = "demo-vpc"
}

variable "VPC_CIDR_BLOCK" {
  default = "10.0.0.0/16"
}

variable "GW_NAME" {
  default = "demo-gw"
}

variable "PUBLIC_RT_NAME" {
  default = "demo-rt"
}

variable "AVAILABILITY_ZONES" {
   type = list
   default = ["us-east-1a", "us-east-1b"]
}

variable "SUBNET_NAMES" {
   type = list
   default = ["public-subnet-A", "public-subnet-B", "private-subnet-A", "private-subnet-B"]
}

variable "SUBNET_IPS" {
   type = list
   default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
}