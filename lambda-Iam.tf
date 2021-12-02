#IAM POLICY

resource "aws_iam_role_policy" "lambda_policy" {
  name = "lambda_policy"
  role = aws_iam_role.lambda_role.id

  policy = file("iam-role/lambda_logs.json")
}


resource "aws_iam_role" "lambda_role" {
  name = "lambda_role"

  assume_role_policy = file("iam-role/lambda-assume_policy.json")

}



#comeback to this S3 BUCKET PERMISSIONS
    



 




  # Terraform's "json code" in seperate file
