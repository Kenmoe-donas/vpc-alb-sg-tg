resource "aws_instance" "serv1" {
  ami = "ami-045269a1f5c90a6a0"
  availability_zone = "us-east-1a"  
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.ws_sg.id]
  user_data = file("userdt.sh")
  subnet_id = aws_subnet.priv1.id
  tags = {
    Name = "Webserver-1"
  }
}

resource "aws_instance" "serv2" {
  ami = "ami-045269a1f5c90a6a0"
  availability_zone = "us-east-1b"  
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.ws_sg.id]
  user_data = file("userdt.sh")
  subnet_id = aws_subnet.priv2.id
  tags = {
    Name = "Webserver-2"
  }
}