/*
resource "aws_s3_bucket" "sample" {
  bucket = "sample-test-bucket"

  tags = {
    Name        = "Sample Bucket"
    Environment = "Demo"
  }
}

resource "aws_s3_bucket_acl" "sample" {
  bucket = aws_s3_bucket.sample.id
  acl    = "private"
}
*/
resource "aws_ecr_repository" "image_gallery" {
  name                 = "demo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}
