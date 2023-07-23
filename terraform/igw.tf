resource "aws_internet_gateway" "myigw" {

# vpc id 
vpc_id = aws_vpc.vpc.id

tags={
    name = "MyIGW"
}
}