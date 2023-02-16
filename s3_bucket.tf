/*resource "aws_s3_bucket" "main_s3" {
  bucket = "main_s3"
  region = var.region_name

  versioning {
    enabled = false
  }
}

resource "aws_s3_bucket_acl" "main_s3_acl" {
  bucket = aws_s3_bucket.main_s3.id
  acl    = "private"
}
*/