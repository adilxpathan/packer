pkr_ami_name      = "custom-ami"
pkr_instance_type = "t2.micro"
pkr_region        = "ap-south-1"
pkr_source_ami    = "ami-0f5ee92e2d63afc18"
pkr_ssh_username  = "ubuntu"
pkr_skip_region_validation = "true"

pkr_tags = {
    Name = "custom-ami"
  }
