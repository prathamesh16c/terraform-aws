resource "aws_s3_bucket" "b" {
  bucket = "infra-demo"
  #acl    = "private"

  tags = {
    Name        = "salary-data"
    Environment = "prod"
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = "<Provide the ARN of the KMS key>"
        sse_algorithm     = "aws:kms"
      }
    }
  }
}