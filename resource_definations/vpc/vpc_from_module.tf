module "my_vpc" {
  source     = "./modules/vpc-module"
  cidr_block = "10.0.0.0/16"
  name       = "my-vpc"
}
