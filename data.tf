data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_iam_policy_document" "kms_key" {
  statement {
    principals {
      type = "AWS"
      identifiers = [
          "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
      ]
    }
    effect = "Allow"
    actions = [
      "kms:GenerateDataKey",
      "kms:Decrypt",
      "kms:ReEncrypt",
      "kms:Encrypt",
      "kms:Describe"
    ]
    resources = [
      "arn:aws:kms:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:alias/${var.kms_key_alias_name}"
    ]
  }
}