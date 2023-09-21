source "amazon-ebs" "custom-ami" {
  ami_name      = var.ami_name
  instance_type = var.instance_type
  region        = var.region
  source_ami    = var.source_ami
  ssh_username  = var.ssh_username
  skip_region_validation = var.skip_region_validation
  tags = var.tags
}
build {
  sources = ["source.amazon-ebs.custom-ami"]

  provisioner "ansible" {
    playbook_file = "./ansible/playbook.yaml"
    user          = "ubuntu"
  }

}
