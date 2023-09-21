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

  validation {
    # regex(...) fails if it cannot find a match
    condition     = can(regex("^ami-", var.pkr_source_ami))
    error_message = "The source_ami value must be a valid AMI ID, starting with \"ami-\"."
  }
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