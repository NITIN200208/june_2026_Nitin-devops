terraform {
  backend "s3" {
    bucket = "terraform-state-devop"
    key    = "terraform.tfstate"
    region = "ap-south-1"

    dynamodb_table = "terraform-lock"

    encrypt = true
  }
}

