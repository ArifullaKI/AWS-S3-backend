provider "aws"{
    shared_credentials_file = "credentials"
    profile = "defaults"
    region = "ap-south-1"
}

terraform {
  backend "s3"{
      bucket = "terraformbacken"
      key = terraform
      region = "ap-south-1"
      dynamodb_table = "terraform-lock"
  }
}

variable "instance_type" {
  default = "t2.micro"
}

resource "aws_instance" "ec2_instance" {
  ami = "ami-0cf31d971a3ca20d6"
  instance_type = "${var.instance_type}"
}

output "ip" {
  value = "${aws_instance.ec2_instance.public_ip}"
}
