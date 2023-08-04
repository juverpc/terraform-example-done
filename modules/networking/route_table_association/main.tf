resource "aws_route_table_association" "private" {
  #count = var.private_subnet_count
  subnet_id = var.subnet_id 
  route_table_id = var.route_table_id
 
}