resource "aws_kms_key" "mykey" {
  description             = var.kms_key_description
  deletion_window_in_days = var.kms_key_deletion_window_in_days
  policy                  = data.aws_iam_policy_document.kms_key.json
}

resource "aws_kms_alias" "a" {
  name          = "alias/${var.kms_key_alias_name}"
  target_key_id = aws_kms_key.mykey.key_id
}

resource "aws_s3_bucket" "encryptedbucket" {
  bucket = "${var.s3_bucket_name}-${data.aws_caller_identity.current.account_id}"

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.mykey.arn
        sse_algorithm     = var.s3_sse_algorithm
      }
    }
  }
}