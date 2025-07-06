provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "example" {
  count         = 1
  instance_type = "t2.nano"
  ami           = "ami-12345678901234567"

  tags = {
    Name = join("-", ["web", "app", count.index + 1])
  }
}
