resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

# to enable dns support and dns hostnames
  enable_dns_support = true

  enable_dns_hostnames = true
  

tags = {
    name = "VPC"
}
}