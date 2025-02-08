variable "AWS_REGION" {
  type    = string
  default = "us-east-1"
}

variable "PATH_TO_PUBLIC_KEY" {
  type    = string
  default = "levelup_key.pub"
}

variable "INSTANCE_TYPE" {
  type    = string
  default = "t2.micro"
}

variable "LAUNCH_TEMPLATE_NAME" {
  type    = string
  default = "tf-launchtemplate"
}

variable "KEY_NAME" {
  type    = string
  default = "tf-ssh-key"
}

variable "AUTOSCALING_GROUP_NAME" {
  type    = string
  default = "tf-autoscaling"
}

variable "AUTOSCALING_GROUP_MIN_SIZE" {
  type    = number
  default = 2
}

variable "AUTOSCALING_GROUP_MAX_SIZE" {
  type    = number
  default = 2
}

variable "HEALTH_CHECK_GRACE_PERIOD" {
  type    = number
  default = 200
}

variable "HEALTH_CHECK_TYPE" {
  type    = string
  default = "ELB"
}

variable "INSTANCE_SG_DESCRIPTION" {
  type    = string
  default = "security group for instances"
}

variable "ELB_SG_DESCRIPTION" {
  type    = string
  default = "security group for Elastic Load Balancer"
}

variable "VPC_NAME" {
  type    = string
  default = "demo-vpc"
}

variable "VPC_CIDR_BLOCK" {
  type    = string
  default = "10.0.0.0/16"
}

variable "GW_NAME" {
  type    = string
  default = "demo-gw"
}

variable "PUBLIC_RT_NAME" {
  type    = string
  default = "demo-rt"
}

variable "AVAILABILITY_ZONES" {
  type    = list(any)
  default = ["us-east-1a", "us-east-1b"]
}

variable "SUBNET_NAMES" {
  type    = list(any)
  default = ["public-subnet-A", "public-subnet-B", "private-subnet-A", "private-subnet-B"]
}

variable "SUBNET_IPS" {
  type    = list(any)
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
}

variable "LD_NAME" {
  type    = string
  default = "centos"
}