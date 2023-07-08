provider "aws"{
    region = "us-east-1"
}

resource "aws-s3-bucket" "nb-bucket"{
    bucket = "red-bucket"
}