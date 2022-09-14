variable "AWS_REGION" {
default = "us-east-1"
}

variable "AMI_ID" {
  default = "ami-0b0ea68c435eb488d"
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

