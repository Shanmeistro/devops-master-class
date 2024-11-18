provider "aws" {
    region = "us-east-1"
}

# plan - execute 
resource "aws_s3_bucket" "my_s3_bucket" {
    bucket = "my-s3-bucket-in28minutes-shannont-002"
}

resource "aws_s3_bucket_versioning" "my_s3_bucket" {
  bucket = aws_s3_bucket.my_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_iam_user" "my_iam_user" {
    name = "my_iam_user_abc_updated"
}