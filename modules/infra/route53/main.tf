resource "aws_route53_zone" "private" {
  name = var.r53_name

  vpc {
    vpc_id = var.vpc_id
  }
}