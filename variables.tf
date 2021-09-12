# variables for aws_iam_policy.this
variable "create_iam_policy" {
    description = "If true, creates an IAM policy"
    type        = bool
    default     = false
}

variable "policy_name" {
    description = "The name of the policy"
    type        = string
}

variable "policy_path" {
    description = " Path in which to create the policy"
    type        = string
    default     = "/"
}

variable "policy_description" {
    description = " Description of the IAM policy"
    type        = string
}

variable "policy_document" {
    description = "The policy document"
    type        = string
}

variable "policy_tags" {
    description = "Map of resource tags for the IAM Policy"
    type        = map(string)
    default     = {}
}

# variables for aws_iam_role.this

variable "create_iam_role" {
    description = "If true, creates an IAM role"
    type        = bool
    default     = false
}

variable "role_name" {
    description = "Friendly name of the role"
    type        = string
}

variable "role_description" {
    description = "Description of the role"
    type        = string
}

variable "role_force_detach_policies" {
    description = "Whether to force detaching any policies the role has before destroying it"
    type        = bool
    default     = false
}

variable "role_inline_policies" {
    description = "Configuration block defining an exclusive set of IAM inline policies associated with the IAM role"
    type        = list(map(string))
    default     = [{}]
}

variable "role_managed_policy_arns" {
    description = "Set of exclusive IAM managed policy ARNs to attach to the IAM role"
    type        = set(string)
    default     = []
}

variable "role_max_session_duration" {
    description = "Maximum session duration (in seconds) that you want to set for the specified role"
    type        = number
    default     = 3600
}

variable "role_path" {
    description = "Path to the role"
    type        = string
    default     = "/"
}

variable "role_tags" {
    description = "Key-value mapping of tags for the IAM role"
    type        = map(string)
    default     = {}
}