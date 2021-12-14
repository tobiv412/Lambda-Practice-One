resource "aws_s3_bucket" "s3-bucket-lambda-412" {
  bucket = "s3-bucket-lambda-412"

  versioning {
    enabled = true
  }

  tags = {
    Name       = "s3-bucket-lambda-412"
    Enivorment = "Test"
  }
}