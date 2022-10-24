provider "aws" {
  region = "sa-east-1"
  access_key = "hidden"
  secret_key = "hidden"
}

resource "aws_instance" "dh_ctd_infra2_instance" {
  ami = "ami-04b3c23ec8efcc2d6" 
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
    "Name" = "terraform"
  }
}

resource "aws_key_pair" "terraform_aws_key_pair" {
  key_name = "terraform-aws"
  public_key = file("terraform-aws.pub")
}