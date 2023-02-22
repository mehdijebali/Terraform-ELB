
variable "aws_access_key" {
  type    = string
  default = ""
}

variable "aws_secret_key" {
  type    = string
  default = ""
}

data "amazon-ami" "autogenerated_1" {
  access_key = "${var.aws_access_key}"
  filters = {
    name                = "amzn2-ami-hvm-2.0.*-gp2"
    root-device-type    = "ebs"
    virtualization-type = "hvm"
  }
  most_recent = true
  owners      = ["amazon"]
  region      = "us-east-1"
  secret_key  = "${var.aws_secret_key}"
}

locals { timestamp = regex_replace(timestamp(), "[- TZ:]", "") }

source "amazon-ebs" "autogenerated_1" {
  access_key    = "${var.aws_access_key}"
  ami_name      = "centos-template-pkr-${local.timestamp}"
  instance_type = "t2.micro"
  region        = "us-east-1"
  secret_key    = "${var.aws_secret_key}"
  source_ami    = "${data.amazon-ami.autogenerated_1.id}"
  ssh_username  = "ec2-user"
}

build {
  sources = ["source.amazon-ebs.autogenerated_1"]

  provisioner "ansible" {
    playbook_file = "./ansible/main.yml"
  }

}
