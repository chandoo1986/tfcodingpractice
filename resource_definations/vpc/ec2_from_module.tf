module "my_ec2" {
  source        = "./modules/ec2-module"
  ami           = "ami-12345678901234567"
  instance_type = "t2.micro"
  subnet_id     = "subnet-01234567"
  key_name      = "my-key-pair"
  name          = "my-ec2-instance"
}
