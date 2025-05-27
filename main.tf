resource "aws_s3_bucket" "example" {
  count  = 5
  bucket = "chandra-bucket-${count.index}"

  tags = {
    Name = "dev-${count.index}"
  }
}