#provider "aws" {
 # region = "ap-south-1"  # Change to your desired region
#}

provider "aws" {
    region = "ap-south-1"
    access_key = "AKIA5FTZB4KVHRNR3KWP"
    secret_key = "Yce/+45WQk/14NLrz8+0bw0RR49cJ1flMlzwzTCo"
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "gourav77889tata"  # Change this to a globally unique name
  }

#resource "aws_s3_bucket_acl" "my_bucket" {
 # bucket = aws_s3_bucket.my_bucket.id
  #acl    = "private"
#}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.my_bucket.arn
}

