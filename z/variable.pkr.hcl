variable "ami_name" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "region" {
  type = string
}

variable "source_ami" {
  type        = string
  description = "The ID of the machine image (AMI) to use for the server."

  validation {
    # regex(...) fails if it cannot find a match
    condition     = can(regex("^ami-", var.source_ami))
    error_message = "The source_ami value must be a valid AMI ID, starting with \"ami-\"."
  }
}

variable "ssh_username" {
  type = string
}

variable "skip_region_validation" {
  type = bool
}

variable "tags" {
  type = map 
}