# AWS-S3-backend
Creating a s3 backend and securing with dynamoDB locking mechanism using terraform.
Steps:
1. excute the s3 to create the bucket.
2. excute dynamodb to create DynamoDB table.
3. go back to main folder and run the main tf file to create ec2 instance and assign the s3 backend and locking with dynamobd table and get the public ip output.
