resource "aws_s3_bucket" "example" {
  bucket = "example-ar-bucket-name"  # Replace with your desired bucket name

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

