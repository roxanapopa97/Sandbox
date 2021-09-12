resource "aws_iam_policy" "this" {
  count       = var.create_iam_policy ? 1 : 0
  name        = var.policy_name
  path        = var.policy_path
  description = var.policy_description
  policy      = var.policy_document
  tags        = var.policy_tags
}


resource "aws_iam_role" "this" {
  count                 = var.create_iam_role ? 1 : 0
  name                  = var.role_name
  description           = var.role_description
  force_detach_policies = var.role_force_detach_policies

  dynamic "inline_policy" {
    for_each = var.role_inline_policies
    content {
      name   = inline_policy.value["name"]
      policy = inline_policy.value["policy"]
    }
  }

# For a given role, this argument is incompatible with using aws_iam_role_policy_attachment.
  managed_policy_arns  = var.create_iam_policy && var.create_iam_role ? null : var.role_managed_policy_arns

  max_session_duration = var.role_max_session_duration
  path                 = var.role_path
  tags                 = var.role_tags
}

resource "aws_iam_role_policy_attachment" "this" {
  count      = var.create_iam_policy && var.create_iam_role ? 1 : 0
  role       = aws_iam_role.this[0].name
  policy_arn = aws_iam_policy.this[0].arn
}