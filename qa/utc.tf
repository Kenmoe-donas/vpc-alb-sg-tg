provider "aws" {
  region = "us-east-1"
}

module "keypair" {
  source        = "../modules/keypair"
  pem_file_name = "qakeytest.pem"
  key_name      = "qakeytest"
  file_permission = 600
}

/*
output "name" {
  key_name 
}
*/