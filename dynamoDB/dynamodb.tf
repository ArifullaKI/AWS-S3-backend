provider "aws" {
  shared_credentials_file = "credentials_file"
  profile = "default"
  region = "ap-south-1"
}

resource "aws_dynamodb_table" "terraform_state_lock" {
  name = "terraform-lock"
  read_capacity = 3
  write_capacity = 3
  hask_key = "LockID"

  attribute{
      name = "LockID"
      type = "S"
  }
}