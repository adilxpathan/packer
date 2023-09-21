source "amazon-ebs" "custom-ami" {
  ami_name      = var.pkr_ami_name
  instance_type = var.pkr_instance_type
  region        = var.pkr_region
  source_ami    = var.pkr_source_ami
  ssh_username  = var.pkr_ssh_username
  skip_region_validation = var.pkr_skip_region_validation
  tags = var.pkr_tags
}
build {
  sources = ["source.amazon-ebs.custom-ami"]

  provisioner "ansible" {
    playbook_file = "./ansible/playbook.yaml"
    user          = "ubuntu"
  }

}
