variable "AWS_REGION" {
  type        = string
  description = "The region where resources are deployed"
  default     = "us-east-1"
}

variable "PATH_TO_PUBLIC_KEY" {
  type        = string
  description = "Path to SSH public key"
  default     = "levelup_key.pub"
}

variable "INSTANCE_TYPE" {
  type        = string
  description = "AWS Instance type"
  default     = "t2.micro"
}

variable "LAUNCH_TEMPLATE_NAME" {
  type        = string
  description = "Launch Template Name"
  default     = "tf-launchtemplate"
}

variable "KEY_NAME" {
  type        = string
  description = "SSH key name"
  default     = "tf-ssh-key"
}

variable "AUTOSCALING_GROUP_NAME" {
  type        = string
  description = "Auto Scaling Group name"
  default     = "tf-autoscaling"
}

variable "AUTOSCALING_GROUP_MIN_SIZE" {
  type        = number
  description = "Auto-Scaling Minimum EC2 Instances number"
  default     = 2
}

variable "AUTOSCALING_GROUP_MAX_SIZE" {
  type        = number
  description = "Auto-Scaling Maximum EC2 Instances number"
  default     = 2
}

variable "HEALTH_CHECK_GRACE_PERIOD" {
  type        = number
  description = "Health Check Period in seconds"
  default     = 200
}

variable "HEALTH_CHECK_TYPE" {
  type        = string
  description = "Health Check Type"
  default     = "ELB"
}

variable "INSTANCE_SG_DESCRIPTION" {
  type        = string
  description = "Instance Security Group Description"
  default     = "security group for instances"
}

variable "ELB_SG_DESCRIPTION" {
  type        = string
  description = "Load Balancer Security Group Description"
  default     = "security group for Elastic Load Balancer"
}

variable "VPC_NAME" {
  type        = string
  description = "VPC Name"
  default     = "demo-vpc"
}

variable "VPC_CIDR_BLOCK" {
  type        = string
  description = "VPC CIDR Block"
  default     = "10.0.0.0/16"
}

variable "GW_NAME" {
  type        = string
  description = "VPC Internet Gatewey name"
  default     = "demo-gw"
}

variable "PUBLIC_RT_NAME" {
  type        = string
  description = "Subnet Route table name"
  default     = "demo-rt"
}

variable "AVAILABILITY_ZONES" {
  type        = list(any)
  description = "List of AZ where instances are deployed"
  default     = ["us-east-1a", "us-east-1b"]
}

variable "SUBNET_NAMES" {
  type        = list(any)
  description = "List of subnets names"
  default     = ["public-subnet-A", "public-subnet-B", "private-subnet-A", "private-subnet-B"]
}

variable "SUBNET_IPS" {
  type        = list(any)
  description = "List of subnets IPs"
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
}

variable "LD_NAME" {
  type        = string
  description = "Linux Distribution"
  default     = "centos"
}