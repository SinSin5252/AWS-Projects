provider "aws" {
    region = "eu-central-1"
}

#Single S3 Bucket for orginal and convertet files
resource "aws_s3_bucket" "file_conversion" {
    Bucket = "serverless-file-conversion-bucket"

    versioning {
        enabled = true
    }

    tags = {
        Name = "Serverless File Conversion Bucket"
    }
}
