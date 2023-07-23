# route table association for public subnets 

resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public.id
}

#route table association for 1st private subnet
resource "aws_route_table_association" "private1" {
  subnet_id      = aws_subnet.private_1.id
  route_table_id = aws_route_table.private1.id
}

