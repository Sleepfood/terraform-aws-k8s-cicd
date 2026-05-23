provider "aws" {
  region  = "eu-central-1"
}

resource "aws_s3_bucket" "terraform-state-bucket" {
  bucket = "sleepfood-terraform-state"
  acl    = "private"

  versioning {
    enabled = true
  }
}

