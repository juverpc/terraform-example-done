
module "vpc" {
  source = "../../modules/networking/vpc" 
  vpc_cidr = var.vpc_cidr      
}

module "igw" {
  source = "../../modules/networking/igw"
  vpc_id = module.vpc.vpc_id
}

module "subnet_staging" {
  source = "../../modules/networking/subnet"
   private_subnet_count  = var.private_subnet_count
   vpc_id = module.vpc.vpc_id
   private_subnet_cidrs  = var.private_subnet_cidrs
}

module "rt" {
  source = "../../modules/networking/route_table"

  vpc_id = module.vpc.vpc_id
}

module "rt_association" {
  source = "../../modules/networking/route_table_association"

  count = var.private_subnet_count
  subnet_id = module.subnet_staging[count.index].id 
  route_table_id = module.rt.route_table_id
  private_subnet_cidrs = var.private_subnet_cidrs
}

