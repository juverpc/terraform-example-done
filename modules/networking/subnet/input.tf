variable "private_subnet_count" {
  description = "Number of private subnets to create."
}


variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for private subnets."
  type        = list(string)
}

variable "vpc_id" {
  description = "ID of the VPC"
  type = string
}

