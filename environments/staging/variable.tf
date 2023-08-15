       
#VPC
variable "vpc_cidr" {
  description = "CIDR block for the VPC."
}

# SUBNET
variable "private_subnet_count" {
  description = "Number of public subnets to create."
}


variable "private_subnet_cidrs" {
  description = "List of CIDR blocks for public subnets."
  type        = list(string)
}

#Route53
variable r53_name {
  description = "route53 private zone name"
}


#TAGS
variable "tag_name" {
  description = "resource name"
}

