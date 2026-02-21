# Run:

terraform init
terraform apply

# Then call:



GET https://l9gubaoj1d.execute-api.eu-west-2.amazonaws.com/upload-url

Response:

{
  "upload_url": "https://s3....",
  "file_key": "uploads/abc123"
}

# Upload file:

curl -X PUT "${upload_url}" \
  -H "Content-Type: application/octet-stream" \
  --upload-file Attachment_01.pdf
