data "aws_caller_identity" "current" {}

data "aws_region" "current" {}

data "aws_iam_role" "role" {
  name = var.cross_region_role_name
}

data "aws_s3_bucket" "cross-region-bucket" {
  bucket = var.cross_region_bucket_name
}

data "aws_iam_policy_document" "kms_key" {
  statement {
    sid = "Enable IAM User Permissions"
    principals {
      type = "AWS"
      identifiers = [
          "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root"
      ]
    }
    effect = "Allow"
    actions = [
      "kms:*"
    ]
    resources = [
      "*"
    ]
  }

  statement {
    sid = "Allow access for Key Administrators"
    principals {
      type = "AWS"
      identifiers = [
          "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/terraform"
      ]
    }
    effect = "Allow"
    actions = [
      "kms:Create*",
      "kms:Describe*",
      "kms:Enable*",
      "kms:List*",
      "kms:Put*",
      "kms:Update*",
      "kms:Revoke*",
      "kms:Disable*",
      "kms:Get*",
      "kms:Delete*",
      "kms:TagResource",
      "kms:UntagResource",
      "kms:ScheduleKeyDeletion",
      "kms:CancelKeyDeletion"
    ]
    resources = [
      "*"
    ]
  }

  statement {
    sid = "Allow use of the key"
    principals {
      type = "AWS"
      identifiers = [
          "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/terraform"
      ]
    }
    effect = "Allow"
    actions = [
      "kms:Encrypt",
      "kms:Decrypt",
      "kms:ReEncrypt*",
      "kms:GenerateDataKey*",
      "kms:DescribeKey"
    ]
    resources = [
      "*"
    ]
  }

  statement {
    sid = "Allow attachment of persistent resources"
    principals {
      type = "AWS"
      identifiers = [
          "arn:aws:iam::${data.aws_caller_identity.current.account_id}:user/terraform"
      ]
    }
    effect = "Allow"
    actions = [
      "kms:CreateGrant",
      "kms:ListGrants",
      "kms:RevokeGrant"
    ]
    resources = [
      "*"
    ]

    condition {
      test     = "Bool"
      variable = "kms:GrantIsForAWSResource"

      values = [
        "true"
      ]
    }
  }
}