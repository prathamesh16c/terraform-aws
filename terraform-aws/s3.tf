resource "aws_s3_bucket" "b" {
  bucket = "infra-demo"
  #acl    = "private"

  tags = {
    Name        = "salary-data"
    Environment = "prod"
  }
}