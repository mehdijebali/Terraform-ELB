#AutoScaling Launch Configuration
resource "aws_launch_configuration" "tf-launchconfig" {
  name_prefix     = var.LAUNCH_CONFIGURATION_NAME
  image_id        = data.aws_ami.packer_ami.id
  instance_type   = var.INSTANCE_TYPE
  key_name        = aws_key_pair.tf-ssh-key.key_name
  security_groups = [aws_security_group.instance-securitygroup.id]
  user_data = file("configurenginx.sh")
  lifecycle {
    create_before_destroy = true
  }
}

#Generate Key
resource "aws_key_pair" "tf-ssh-key" {
    key_name = var.KEY_NAME
    public_key = file(var.PATH_TO_PUBLIC_KEY)
}

#Autoscaling Group
resource "aws_autoscaling_group" "levelup-autoscaling" {
  name                      = var.AUTOSCALING_GROUP_NAME
  vpc_zone_identifier       = [module.network.public_subnet_A_id, module.network.public_subnet_B_id]
  launch_configuration      = aws_launch_configuration.tf-launchconfig.name
  min_size                  = var.AUTOSCALING_GROUP_MIN_SIZE
  max_size                  = var.AUTOSCALING_GROUP_MAX_SIZE
  health_check_grace_period = var.HEALTH_CHECK_GRACE_PERIOD
  health_check_type         = var.HEALTH_CHECK_TYPE
  load_balancers            = [aws_elb.tf-elb.name]
  force_delete              = true

  tag {
    key                 = "Name"
    value               = "EC2 instance via LB Autoscaling"
    propagate_at_launch = true
  }
}

output "ELB" {
  value = aws_elb.tf-elb.dns_name
}