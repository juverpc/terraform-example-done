# módulos/vpc/variables.tf

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
}


variable "tag_name" {
  description = "resource name"
  type = string
  default = "MyVPC"
}





