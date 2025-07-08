variable "no_of_ecrs" {
  description = "Number of ECR repositories to create"
  type        = number
}

variable "name" {
  description = "List of names for the ECR repositories"
  type        = list(string)
}

variable "image_tag_mutability" {
  description = "Specifies whether image tags are mutable or immutable. Allowed values: MUTABLE or IMMUTABLE"
  type        = string
}

variable "scan_on_push" {
  description = "Whether to enable image scanning on push for the ECR repository"
  type        = bool
  default     = true
}
variable "encryption_type" {
  description = "The encryption type to use for the repository. Supported values are AES256 or KMS."
  type        = string
  default     = "AES256"
}

variable "kms_key_id" {
  description = "The ARN of the KMS key to use when encryption_type is KMS."
  type        = string
  default     = ""
}

variable "force_delete" {
  description = "If true, deletes the repository even if it contains images"
  type        = bool
  default     = false
}

variable "region" {
  description = "AWS region where the ECR repositories will be created"
  type        = string
}

variable "role_arn" {
  description = "The ARN of the IAM role used to authenticate and authorize Terraform to manage AWS resources"
  type        = string
}