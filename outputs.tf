# outputs for aws_iam_policy.this
output "policy_id" {
    description = "The ARN assigned by AWS to this policy"
    value = aws_iam_policy.this.id
}

output "policy_arn" {
    description = "The ARN assigned by AWS to this policy"
    value = aws_iam_policy.this.arn
}

output "policy_description" {
    description = "The description of the policy"
    value = aws_iam_policy.this.description
}

output "policy_name" {
    description = "The name of the policy"
    value = aws_iam_policy.this.name
}

output "policy_path" {
    description = "The path of the policy in IAM"
    value = aws_iam_policy.this.path
}

output "policy_document" {
    description = "The policy document"
    value = aws_iam_policy.this.policy
}

output "policy_document_id" {
    description = "The policy's ID"
    value = aws_iam_policy.this.policy_id
}

output "policy_tags" {
    description = "A map of tags assigned to the resource, including those inherited from the provider"
    value = aws_iam_policy.this.tags_all
}

# outputs for aws_iam_role.this
output "role_arn" {
    description = "Amazon Resource Name (ARN) specifying the role"
    value = aws_iam_role.this.arn
}

output "role_create_date" {
    description = "Creation date of the IAM role"
    value = aws_iam_role.this.create_date
}

output "role_id" {
    description = "Name of the role"
    value = aws_iam_role.this.id
}

output "role_name" {
    description = "Name of the role"
    value = aws_iam_role.this.name
}

output "role_tags" {
    description = " A map of tags assigned to the resource, including those inherited from the provider"
    value = aws_iam_role.this.tags_all
}

output "role_unique_id" {
    description = "Stable and unique string identifying the role"
    value = aws_iam_role.this.unique_id
}