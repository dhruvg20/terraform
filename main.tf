#terraform {
#  required_version = ">= 0.8, < 0.9"
#}

provider "aws" {
  #access_key = "AKIAILFTGHKM5C3UBNJQ"
  #secret_key = "LCtnpZ/zj3n19U3zTk8XrWJMKTu8QzTFUOU9XeDS"
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-40d28157"
  instance_type = "t2.micro"
  tags {
    Name = "terraform-example"
  }
}
