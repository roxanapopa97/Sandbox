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

variable "s3_logging_bucket_name" {
  description = "Bucket used for storing logs about the created bucket"
  type        = string
  default     = "s3-logging-bucket-216443581767"
}

variable "cross_region_role_name" {
  description = "Name of the role used for S3 cross region replication"
  type        = string
  default     = "cross-region-bucket-replication"
}

variable "cross_region_bucket_name" {
  description = "Name of the bucket used for cross region replication"
  type        = string
  default     = "cross-region-replication-bucket-216443581767"
}

variable "kms_key_alias_name" {
  description = "Alias name used for KMS key"
  type        = string
  default     = "alias_encrypted_bucket_kms_key"
}