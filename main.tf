provider "aws" {
    region = "us-east-1"
}

provider "aws" {
    region = "us-east-2"
    alias = "east2"
}

resource "aws_s3_bucket" "nb-bucket"{
    bucket = "nagababu.thota-red-bucket"
    versioning {
      enabled = true
    }
    provider = aws.east2
}