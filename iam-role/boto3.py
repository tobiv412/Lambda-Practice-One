import boto3 as aws


sess = boto3.Session(region_name='eu-west-1')

s3client = sess.client('s3')

bucket_name = 's3-bucket-lambda-412'
bucket_list = s3client.list_buckets()
print(bucket_list['Buckets'])




def food(event, content) :
    print("fish")