terraform {
  backend "s3" {
    bucket = "talent-academy-412-tfstates-vic"
    key    = "lambda-practice-one/terraform.tfstates"
    region = "eu-west-1"
  }
}


# Bucket is for tf states only, should not save tfstates locally
# Backend must always be done first