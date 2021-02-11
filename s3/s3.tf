provider "aws" {
  shared_credentials_file = "credentials_file"
  profile = "default"
  region = "ap-south-1"  
}

resource "aws_s3_bucket" "bucket" {
  bucket = "terraformbackend"
}