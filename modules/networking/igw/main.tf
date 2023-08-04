resource "aws_internet_gateway" "igw" {
  vpc_id = var.vpc_id

  /* tags = {
    Name = var.tag_name
    Environment = var.tag_environment
  } */
}
