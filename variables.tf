variable "no_of_ecrs" {
  description = "value"
  type        = number
}
variable "ecr_name" {
  description = "value"
  type        = list(string)
}
variable "force_delete" {
  description = "value"
  type        = string
  default     = false
}

variable "image_tag_mutability" {
  description = "value"
  type        = string
}
variable "image_scanning_configuration" {
  description = "value"
  type        = string
  default     = true
}
variable "scan_on_push" {
  description = "value"
  type        = bool
  default = true
}
variable "region" {
  description = "value"
  type        = string
}
variable "role_arn" {
  description = " The ARN of the IAM role"
  type = string
}