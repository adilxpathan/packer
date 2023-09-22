variable "pkr_ami_name" {
  type = string
  default = null
}

variable "pkr_instance_type" {
  type = string
  default = null
}

variable "pkr_region" {
  type = string
  default = null
}

variable "pkr_source_ami" {
  type        = string
  default = null
  description = "The ID of the machine image (AMI) to use for the server."
}

variable "pkr_ssh_username" {
  type = string
  default = null
}

variable "pkr_skip_region_validation" {
  type = string
  default = null
}

variable "pkr_tags" {
  type = map(string)
  default = null
}