provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "mybucket" {
  bucket = format("my-bucket-%02d", count.index + 1)
  count  = 3


  tags = {
    Name        = "mybucket"
    Environment = "Prod"
  }
}

/*

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.mybucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_acl" "addacl" {
  bucket                = aws_s3_bucket.mybucket.id
  acl = "private"
}
*/
