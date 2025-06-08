provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_s3_bucket" "quicksight_bucket" {
  bucket = "my-quicksight-bucket-050899"

  tags = {
    Name        = "QuickSightBucket"
    Description = "Bucket for storing datasets for Amazon QuickSight"
    Environment = "Dev"
  }
}