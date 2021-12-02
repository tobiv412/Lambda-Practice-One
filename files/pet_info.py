import boto3 


def pet_info(event, content) :


    s3_client = boto3.client('s3')

    bucket_name = 's3-bucket-lambda-412'
    bucket_list = s3_client.list_buckets()

    print(bucket_list['Buckets'])



