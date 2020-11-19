resource "aws_s3_bucket" "demo" {
  bucket        = "${var.name_prefix}-s3-demo-bucket"
  acl           = "private"
  force_destroy = false
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}