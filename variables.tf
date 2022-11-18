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

variable "LAUNCH_CONFIGURATION_NAME" {
  default = "tf-launchconfig"
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