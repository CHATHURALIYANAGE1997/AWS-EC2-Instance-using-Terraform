resource "aws_security_group" "demo-sg" {
  name = “sec-group”
  description = "Allow HTTPS, HTTP and SSH traffic via Terraform"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  
}
