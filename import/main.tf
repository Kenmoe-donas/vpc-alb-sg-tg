provider "aws" {
  region = "us-east-1"
}

import {
  to = aws_instance.web
  id = "i-03012f9f612fe169f"
}

