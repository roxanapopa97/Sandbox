data "aws_caller_identity" "current" {}

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
      "*",
    ]
  }
}