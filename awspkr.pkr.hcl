packer {
  required_plugins {
    amazon = {
      source  = "github.com/hashicorp/amazon"
      version = "~> 1"
    }
    ansible = {
      source  = "github.com/hashicorp/ansible"
      version = "~> 1"
    }
  }
}

source "amazon-ebs" "custom-ami" {
  ami_name      = "custom-ami"
  instance_type = "t2.micro"
  region        = "ap-south-1"
  source_ami    = "ami-0f5ee92e2d63afc18"
  ssh_username  = "ubuntu"
  skip_region_validation = "true"
  tags = {
    Name = "custom-ami"
  }
}
build {
  sources = ["source.amazon-ebs.custom-ami"]

  provisioner "ansible" {
    playbook_file = "./playbook.yaml"
    user          = "ubuntu"
  }

}
