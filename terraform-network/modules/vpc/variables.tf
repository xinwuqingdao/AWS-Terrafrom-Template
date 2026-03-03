variable "name" { type = string }

variable "vpc_cidr" { type = string }

variable "azs" {
  type = list(string)
}

variable "public_subnet_cidrs" {
  type = list(string)
}

variable "private_subnet_cidrs" {
  type = list(string)
}

variable "ssh_cidr" {
  type        = string
  description = "Your public IP /32 for SSH access"
}

variable "key_name" {
  type        = string
  description = "Existing EC2 key pair name"
}

variable "create_ec2" {
  type    = bool
  default = true
}

variable "create_nat_gateway" {
  type    = bool
  default = true
}