# outputs for aws_iam_policy.this
output "policy_id" {
    description = "The ARN assigned by AWS to this policy"
    value = aws_iam_policy.this[0].id
}

output "policy_arn" {
    description = "The ARN assigned by AWS to this policy"
    value = aws_iam_policy.this[0].arn
}

output "policy_description" {
    description = "The description of the policy"
    value = aws_iam_policy.this[0].description
}

output "policy_name" {
    description = "The name of the policy"
    value = aws_iam_policy.this[0].name
}

output "policy_path" {
    description = "The path of the policy in IAM"
    value = aws_iam_policy.this[0].path
}

output "policy_document" {
    description = "The policy document"
    value = aws_iam_policy.this[0].policy
}

output "policy_document_id" {
    description = "The policy's ID"
    value = aws_iam_policy.this[0].policy_id
}

output "policy_tags" {
    description = "A map of tags assigned to the resource, including those inherited from the provider"
    value = aws_iam_policy.this[0].tags_all
}

# outputs for aws_iam_role.this
output "role_arn" {
    description = "Amazon Resource Name (ARN) specifying the role"
    value = aws_iam_role.this[0].arn
}

output "role_create_date" {
    description = "Creation date of the IAM role"
    value = aws_iam_role.this[0].create_date
}

output "role_id" {
    description = "Name of the role"
    value = aws_iam_role.this[0].id
}

output "role_name" {
    description = "Name of the role"
    value = aws_iam_role.this[0].name
}

output "role_tags" {
    description = " A map of tags assigned to the resource, including those inherited from the provider"
    value = aws_iam_role.this[0].tags_all
}

output "role_unique_id" {
    description = "Stable and unique string identifying the role"
    value = aws_iam_role.this[0].unique_id
}