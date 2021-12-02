#GENERATE A ZIP FILE FOR OUR PYTHON CODE SCRIPT

data "archive_file" "pet_script" {
  type        = "zip"
  source_file = "${path.module}/pet_info.py"                #SOURCE OF THE FILE
  output_path = "${path.module}/files/pet_info.zip"         #DESTINATION OF THE GENERATED FILE (.zip)
}



# ${cwd} = current working directory
# ${module} = module