#elastic IP for the NATGWs 
resource "aws_eip" "eip_for_natgw_1" {
# to make the EIP depends on the IGW we've created
 depends_on = [ aws_internet_gateway.myigw]

}

resource "aws_eip" "eip_for_natgw_2" {
    
 depends_on = [ aws_internet_gateway.myigw]

}
