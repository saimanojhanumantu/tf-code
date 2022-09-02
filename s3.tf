resource "random_string" "s3bucketname" {
  length = 6
  special = true
}

resource "aws_s3_bucket" "test-tf-enc" {
  bucket = "random_string.s3bucketname"
  acl    = "private"


  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
