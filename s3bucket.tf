resource "aws_s3_bucket" "s3-bucket-lambda-412" {
  bucket = "s3-bucker-lambda-412"

  versioning {
    enabled = true
  }


  tags = {
    Name    = "pet_bucket"
    Enivorment = "Test"
}
}