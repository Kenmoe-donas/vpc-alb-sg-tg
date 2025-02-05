/*
count = 2
depends_on =
for_each
life-cycle


provider "aws" {
  region = var.region
}

variable "region" {
  description = "value of region"
  type = string
  sensitive = true
  //default = "us-east-1"
}
*/

/*
resource "aws_instance" "ser1" {
  count = 1
  ami = "ami-0c614dee691cbbf37"
  instance_type = "t2.micro"
  
  tags = {
    Name = "dev-ser${count.index +1}"
  }
}

output "ip" {
  value = aws_instance.ser1[*].public_ip
}

resource "aws_iam_user" "user1" {
  name = "cloudTeam"
  depends_on = [ aws_instance.ser1 ] // list
}
*/

/*
locals {
  typeofinstance = ["t2.micro", "t3.small"]
}
*/

/*
variable "typeofinstance" {
  default = ["t2.micro", "t3.small", "t2.micro"]
}


resource "aws_instance" "ser" {
  for_each = toset(var.typeofinstance)
  ami = "ami-0c614dee691cbbf37"
  instance_type = each.key
}


variable "ami-type" {
  type = map(object({
    ami = string
    instance = string
  }))
  default = {
    dev = {ami: "ami-0c614dee691cbbf37", instance: "t2.micro"}
    qa = {ami: "ami-0c614dee691cbbf37", instance: "t3.small"}
  }
}

resource "aws_instance" "s2" {
  for_each = var.ami-type 
  ami = each.value.ami
  instance_type = each.value.instance
  tags = {
    Name = each.key
  }
}


// provider selection

provider "aws" {
  region = "us-east-1"
  alias = "us1"
}

provider "aws" {
  region = "us-west-1"
  alias = "uw1"
}

resource "aws_instance" "ser1" {
  provider = aws.us1
  ami = ami-0c614dee691cbbf37
  instance_type = "t2.micro"
}

*/

// Life cycle 

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "server" {
  ami = "ami-0c614dee691cbbf37"
  instance_type = "t2.micro"
  lifecycle {
    //create_before_destroy = true
    prevent_destroy = false
  }
}