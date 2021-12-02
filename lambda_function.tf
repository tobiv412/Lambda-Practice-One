resource "aws_lambda_function" "pet_lambda" {
  filename      = "${path.module}.pet_info.output_path"
  function_name = "pet_info"
  role          = aws_iam_role.lambda_role.arn
  handler       = "pet_info"


  #source_code_hash = filebase64sha256("lambda_function_payload.zip")

source_code_hash = data.archive_file.pet_info.output_base64sha256

  runtime = "python3.8"

 
}
