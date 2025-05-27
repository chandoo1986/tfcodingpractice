//Basic count usage ofr bucket creation
/*resource "aws_s3_bucket" "example" {
  count  = 5
  bucket = "chandra-bucket-05272025-${count.index}"

  tags = {
    Name = "dev-${count.index}"
  }
}
*/

//Create IAM users with dynamic names
resource "aws_iam_user" "dev_users" {
  count = 3
  name  = "dev-user-${count.index}"
}