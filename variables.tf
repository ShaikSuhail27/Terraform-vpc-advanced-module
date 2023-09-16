variable "cidr_block" {

}

variable "enable_dns_hostnames" {
    default = true
}

variable "enable_dns_support" {
    default = true
}

variable "common_tags" {
    default = {}
}

variable "project_name" {

}

variable "igw_tags"{
    default = {}
}

variable "public_subnet_cidr" {
 type = list
  validation {
    condition     = length(var.public_subnet_cidr) == 2
    error_message = "please enter the 2 public subnet cidr's"
  }

}

variable "private_subnet_cidr"{
 type = list
  validation {
    condition     = length(var.private_subnet_cidr) == 2
    error_message = "please enter the 2 private subnet cidr's"
  }
}

variable "database_subnet_cidr"{
 type = list
  validation {
    condition     = length(var.database_subnet_cidr) == 2
    error_message = "please enter the 2 database subnet cidr's"
  }
}