provider "aws" {
  region     = "ap-south-1"  # Change this to your desired region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  tags = {
    Name = "MyEC2Instance"
  }
}

