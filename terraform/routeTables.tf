#public route table

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.myigw.id
  }

 
  tags = {
    Name = "public route table "
  }
}

# 1st private route table reffering to 1st NAT GW

resource "aws_route_table" "private1" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.natgw_1.id
  }

 
  tags = {
    Name = "private 1 route table "
  }
}

