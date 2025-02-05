# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.
# __generated__ by Terraform

resource "aws_instance" "web" {
  ami                         = "ami-0c614dee691cbbf37"
  associate_public_ip_address = true
  availability_zone           = "us-east-1b"
  instance_type               = "t2.micro"
  key_name                    = "ec2-key-pair"
  monitoring                  = false
  security_groups             = "launch-wizard-3"
  subnet_id                   = "subnet-06d7380f73d78f7ca"
  vpc_security_group_ids      = ["sg-0d5d028ebe5cfb5d6"]

  tags = {
    Name = "web-ser-terra-import"
  }
}