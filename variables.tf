variable "kms_key_description" {
    description = "This key is used to encrypt bucket objects"
    type        = string
    default     = "This key is used to encrypt bucket objects"
}

variable "kms_key_deletion_window_in_days" {
    description = "Deletion in days"
    type        = number
    default     = 10
}

variable "s3_bucket_name" {
    description = "Name of the bucket"
    type        = string
    default     = "encryptedbucket"

}

variable "s3_sse_algorithm" {
    description = "The server-side encryption algorithm to use. Valid values are AES256 and aws:kms"
    type        = string
    default     = "aws:kms"

}

# variable "kms_key_alias_name" {
#   description = "Alias name used for KMS key"
#   type        = string
#   default     = "encrypted_bucket_kms_key_alias"
# }