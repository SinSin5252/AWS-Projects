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

resource "aws_lambda_function" "file_converter" {


}

resource "aws_dynamodb_table" "file-metadata" {

}

resource "aws_iam_role" "lambda_role" {

}

resource "aws_sqs_que" "file_queue" {

}

resource "aws_sns_topic" "file_notification" {
    
}