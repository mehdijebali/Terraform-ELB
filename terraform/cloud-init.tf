data "cloudinit_config" "elb_instance_userdata" {
  gzip            = true
  base64_encode   = true 

  # Part 1: Shell script for initial setup
  part {
    filename      = "Configure Nginx"
    content_type  = "text/x-shellscript"
    content       = local.template-user-data
  }

  # Part 2: Shell script for ssm agent installation
  part {
    filename      = "Install SSM Agent"
    content_type  = "text/x-shellscript"
    content       = module.ssm-role.user_data
  }
}