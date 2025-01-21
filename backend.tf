terraform {
  backend "s3" {
    bucket         = "w6-ktd-bk"
    key            = "proj-terra/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "state-file-lock"
    encrypt        = true
  }
}
