# Creating EC2 Instance
resource "aws_instance" "wordpress" {
  ami                         = "ami-0440d3b780d96b29d"
  instance_type               = "t2.micro"
  key_name                    = "wordpress1"
  vpc_security_group_ids      = [aws_security_group.ec2-SG.id]
  subnet_id                   = aws_subnet.subnet-1.id
  associate_public_ip_address = true
  user_data                   = file("userdata.sh")

  tags = {
    Name = "Wordpress"
  }
}
