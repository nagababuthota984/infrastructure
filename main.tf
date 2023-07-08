provider "aws" {
    region = "us-east-1"
}

provider "aws" {
    region = "us-east-2"
    alias = "east2"
}

resource "aws_s3_bucket" "nb-bucket"{
    bucket = "nagababu.thota-red-bucket"
    provider = aws.east2
}

resource "aws_s3_bucket_versioning" "nb-bucket-versioning" {
    bucket = aws_s3_bucket.nb-bucket.id
    versioning_configuration {
      status = "Enabled"
    }
    provider = aws.east2
}

output "message" {
    value = aws_s3_bucket.nb-bucket.bucket
}