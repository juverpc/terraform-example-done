# módulos/vpc/main.tf

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.tag_name 
  } 
}



