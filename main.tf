terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

# Providers Configuration
provider "aws" {
  region     = "ap-south-1"
  access_key = "YOUR_ACCESS_KEY" # give your access_key insteed
  secret_key = "YOUR_SECRET_KEY" # give your secret_key insteed
}

# Create a Security Group
resource "aws_security_group" "example" {
  name = "example-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow SSH access from anywhere (update for security)
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Allow HTTP access from anywhere
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Launch an EC2 Instance
# create a EC2 instance
resource "aws_instance" "server" { # "myvm" give your EC2 instance name insteed "this is for your reference"
 ami           = "ami-0fd05997b4dff7aac" # ap-south-1 instance id for (amazon linux)
 instance_type = "t2.micro"
 security_groups = [aws_security_group.example.name]
 key_name = "my default key" # "TF_key" change your public name here

 tags = {
    Name = "my-ec2-machines"    
  }
 
 user_data = file("${path.module}/script.sh")
 
}
# Output the public IP of the instance
output "ec2_public_ip" {
  value       = aws_instance.server.public_ip
  description = "The public IP of the EC2 instance"
}