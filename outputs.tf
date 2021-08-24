output "s3_bucket_name" {
    description = "The name of the created bucket"
    value       = aws_s3_bucket.encryptedbucket.id
}

output "aws_kms_key_arn" {
    description = "The Amazon Resource Name (ARN) of the key"
    value       = aws_kms_key.mykey.arn
}