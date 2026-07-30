provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-02b64aa047cb5edf5"
  instance_type = "t3.micro"
  count = 2

  tags = {
    Name = "Terraform-EC2"
  }
}
