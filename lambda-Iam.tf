#IAM POLICY

resource "aws_iam_role_policy" "lambda_policy" {
  name = "lambda_policy"
  role = aws_iam_role.lambda_role.id

  policy = file("iam-role_lambda.json")
}


resource "aws_iam_role" "lambda_role" {
  name = "lambda_role"

  assume_role_policy = file("iam-role_lambda-assume_policy.json")

}

resource "aws_s3_bucket_object" "object" {
  bucket = "s3-bucket-lambda-412"
  key    = "sample_data"
  source = "~/Documents/Talent-Academy/week-3/lambda/lambda-practice-one/sample_data.json"

#comeback to this S3 BUCKET PERMISSIONS
    
{ 
      "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "ListObjectsInBucket",
            "Effect": "Allow",
            "Action": ["s3:ListBucket"],
            "Resource": ["arn:aws:s3:::s3-bucket-lambda-412"]
        },
        {
            "Sid": "AllObjectActions",
            "Effect": "Allow",
            "Action": "s3:*Object",
            "Resource": ["arn:aws:s3:::s3-bucket-lambda-412/*"]
        }
    ]
}


 




  # Terraform's "json code" in seperate file
  