# outputs for aws_iam_policy.this
output "policy_id" {
    description = "The ARN assigned by AWS to this policy"
    value = var.create_iam_policy ? aws_iam_policy.this[0].id : null
}

output "policy_arn" {
    description = "The ARN assigned by AWS to this policy"
    value = var.create_iam_policy ? aws_iam_policy.this[0].arn : null
}

output "policy_description" {
    description = "The description of the policy"
    value = var.create_iam_policy ? aws_iam_policy.this[0].description : null
}

output "policy_name" {
    description = "The name of the policy"
    value = var.create_iam_policy ? aws_iam_policy.this[0].name : null
}

output "policy_path" {
    description = "The path of the policy in IAM"
    value = var.create_iam_policy ? aws_iam_policy.this[0].path : null
}

output "policy_document" {
    description = "The policy document"
    value = var.create_iam_policy ? aws_iam_policy.this[0].policy : null
}

output "policy_document_id" {
    description = "The policy's ID"
    value = var.create_iam_policy ? aws_iam_policy.this[0].policy_id : null
}

output "policy_tags" {
    description = "A map of tags assigned to the resource, including those inherited from the provider"
    value = var.create_iam_policy ? aws_iam_policy.this[0].tags_all : null
}

# outputs for aws_iam_role.this
output "role_arn" {
    description = "Amazon Resource Name (ARN) specifying the role"
    value = var.create_iam_role ? aws_iam_role.this[0].arn : null
}

output "role_create_date" {
    description = "Creation date of the IAM role"
    value = var.create_iam_role ? aws_iam_role.this[0].create_date : null
}

output "role_id" {
    description = "Name of the role"
    value = var.create_iam_role ? aws_iam_role.this[0].id : null
}

output "role_name" {
    description = "Name of the role"
    value = var.create_iam_role ? aws_iam_role.this[0].name : null
}

output "role_tags" {
    description = " A map of tags assigned to the resource, including those inherited from the provider"
    value = var.create_iam_role ? aws_iam_role.this[0].tags_all : null
}

output "role_unique_id" {
    description = "Stable and unique string identifying the role"
    value = var.create_iam_role ? aws_iam_role.this[0].unique_id : null
}