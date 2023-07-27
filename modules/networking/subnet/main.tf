

resource "aws_subnet" "subnet_private" {
  count = var.private_subnet_count
  vpc_id = var.vpc_id
  cidr_block = var.private_subnet_cidrs[count.index]

  

}
