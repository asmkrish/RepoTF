resource "aws_s3_bucket" "example" {
  bucket = "example-ar1-bucket-name"  # Replace with your desired bucket name

  # Configure the bucket properties
  #acl    = "private"

    tags = {
    Name        = "Example AR Bucket"
    Environment = "Test"
  }
  
}
# S3 resource versioning 

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.example.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "my_bucket_encryption" {
  bucket = aws_s3_bucket.example.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}
