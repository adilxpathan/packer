variable "ami_name" {
  type = string
  default = null
}

variable "instance_type" {
  type = string
  default = null
}

variable "region" {
  type = string
  default = null
}

variable "source_ami" {
  type        = string
  default = null
  description = "The ID of the machine image (AMI) to use for the server."

  validation {
    # regex(...) fails if it cannot find a match
    condition     = can(regex("^ami-", var.source_ami))
    error_message = "The source_ami value must be a valid AMI ID, starting with \"ami-\"."
  }
}

variable "ssh_username" {
  type = string
  default = null
}

variable "skip_region_validation" {
  type = string
  default = null
}

variable "tags" {
  type = map 
  default = null
}