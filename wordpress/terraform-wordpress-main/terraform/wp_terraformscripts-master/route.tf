#Creating Route table
resource "aws_route_table" "route" {
  vpc_id = aws_vpc.demovpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.demoigw.id
  }
  tags = {
    Name = "Route to Internet"
  }
}


#Associating Routetable
resource "aws_route_table_association" "rt1" {
  subnet_id      = aws_subnet.wp_subnet-1.id
  route_table_id = aws_route_table.route.id
}


