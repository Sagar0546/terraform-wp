#Creating Wordpress subnet
resource "aws_subnet" "wp_subnet-1" {
  vpc_id                  = aws_vpc.demovpc.id
  cidr_block              = "10.0.1.0/24" 
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
  tags = {
    Name = "Web Subnet-1"
  }
}
