# Creating Security Group for Instance
resource "aws_security_group" "demosg" {
  vpc_id = aws_vpc.demovpc.id

  # Inbound Rules
  # HTTP access from the security group 
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # SSH access from anywhere
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound rules
  # Internet access to anywhere
  egress {
    from_port = 0
    to_port   = 0
    protocol  = "-1"
  }
}

