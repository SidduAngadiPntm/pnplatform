import boto3
import json
import uuid
import os

BUCKET = os.environ["BUCKET_NAME"]
REGION = os.environ["REGION"]

s3 = boto3.client(
    "s3",
    region_name=REGION,
    endpoint_url=f"https://s3.{REGION}.amazonaws.com"
)

def lambda_handler(event, context):
    key = f"uploads/{uuid.uuid4()}"

    url = s3.generate_presigned_url(
        ClientMethod="put_object",
        Params={
            "Bucket": BUCKET,
            "Key": key,
            "ContentType": "application/octet-stream"
        },
        ExpiresIn=300
    )

    return {
        "statusCode": 200,
        "body": json.dumps({
            "upload_url": url,
            "key": key
        })
    }