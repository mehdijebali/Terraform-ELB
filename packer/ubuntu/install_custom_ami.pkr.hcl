data "amazon-ami" "ubuntu" {
  access_key = "${var.aws_access_key}"
  filters = {
    name                = "ubuntu/images/*ubuntu-xenial-16.04-amd64-server-*"
    root-device-type    = "ebs"
    virtualization-type = "hvm"
  }
  most_recent = true
  owners      = ["099720109477"]
  region      = "us-east-1"
  secret_key  = "${var.aws_secret_key}"
}

source "amazon-ebs" "ubuntu" {
  access_key    = "${var.aws_access_key}"
  ami_name      = "ubuntu-template-pkr-${formatdate("YYYY-MM-DD-hhmmss", timestamp())}"
  instance_type = "t2.micro"
  region        = "us-east-1"
  secret_key    = "${var.aws_secret_key}"
  source_ami    = "${data.amazon-ami.ubuntu.id}"
  ssh_username  = "ubuntu"
}

build {
  sources = ["source.amazon-ebs.ubuntu"]

  provisioner "shell" {
    inline = ["sudo apt-get update -y"]
  }

  provisioner "ansible" {
    playbook_file = "./ansible/main.yml"
  }

}
