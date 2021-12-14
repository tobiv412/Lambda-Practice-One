#IAM POLICY

resource "aws_iam_policy" "lambda_policy" {
  name   = "lambda_policy"
  policy = file("iam-role/lambda_logs.json")
}


resource "aws_iam_role" "lambda_role" {
  name               = "lambda_role"
  assume_role_policy = file("iam-role/lambda-assume_policy.json")
}

resource "aws_iam_role_policy_attachment" "lambda_role_policy_attach" {
  role       = aws_iam_role.lambda_role.name
  policy_arn = aws_iam_policy.lambda_policy.arn
}

#comeback to this S3 BUCKET PERMISSIONS









# Terraform's "json code" in seperate file
