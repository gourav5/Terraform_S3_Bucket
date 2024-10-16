#!/bin/bash

# Variables
FILE_PATH="/var/www/web2/"  # Change this to your file path
BUCKET_NAME="gourav77889tata"   # Change this to your S3 bucket name
S3_PATH="s3://gourav77889tata/"         # Optional: specify the S3 path
awsprofile=devops

# Copy file to S3
aws s3 cp "$FILE_PATH" "$S3_PATH" --recursive --profile $awsprofile

# Check if the command was successful
if [ $? -eq 0 ]; then
    echo "File uploaded successfully to $S3_PATH" 
else
    echo "Error uploading file to S3"
fi
