#Creating Internet Gateway for Demo VPC
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
}
