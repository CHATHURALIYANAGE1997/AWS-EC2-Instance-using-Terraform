provider "aws" {
  region ="Chose your region accoding to your reqirment"
  access_key="yor_aws_access_key"
  secret_key="your_aws_secret_key"
#  These two key in your profile section user Security credentials
#  If you create only security group you will have to use this Security credentials
}
resource "aws_security_group" "demo-sg" {
  name = “sec-group”
  description = "Allow HTTPS, HTTP and SSH traffic via Terraform"
# HTTP traffic
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # SSH traffic
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   # HTTPS traffic
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
   egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
