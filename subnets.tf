#Creating Subnets for Demo VPC
#Creating 1st public Subnet
resource "aws_subnet" "subnet-1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.subnet1_cidr
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"
  tags = {
    Name = "Web Subnet 1"
  }
}
