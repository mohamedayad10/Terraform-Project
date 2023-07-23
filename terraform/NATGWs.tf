resource "aws_nat_gateway" "natgw_1" {
  allocation_id = aws_eip.eip_for_natgw_1.id
  subnet_id     = aws_subnet.public_1.id

  tags = {
    Name = "NAT GW 1"
  }

  # To add an explicit dependency on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.myigw]
}
