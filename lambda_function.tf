resource "aws_lambda_function" "test_lambda" {
  filename      = "boto3.zip"
  function_name = "lambda_function_name"
  role          = aws_iam_role.lambda_role.arn
  handler       = "boto3.food"


  #source_code_hash = filebase64sha256("lambda_function_payload.zip")

  runtime = "python3.10.x"

 
}
