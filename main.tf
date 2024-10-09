provider "aws" {
  region = "ap-south-1"  # Change to your desired region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "gourav77889tata"  # Change this to a globally unique name
  }

resource "aws_s3_bucket_acl" "gourav77889tata" {
  bucket = aws_s3_bucket.gourav77889tata.id
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.my_bucket.arn
}

