terraform {
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source = "hashicorp/aws"
      region = "ap-southeast-2"
    }
  }
}

resource "aws_instance" "web" {
  ami                    = "ami-0d6294dcaac5546e4"
  instance_type          = "t2.micro"

  tags = {
    Name = tafadzwa-testInstance
  }
}
