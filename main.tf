provider "aws" {
  region = "us-east-1"  # Change to your desired region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "gourav77889tata"  # Change this to a globally unique name
  aws_s3_bucket_acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.my_bucket.arn
}

