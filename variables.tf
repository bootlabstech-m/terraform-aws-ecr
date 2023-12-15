variable "no_of_ecrs" {
  description = "value"
  type        = number
}
variable "name" {
  description = "value"
  type        = list(string)
}
variable "image_tag_mutability" {
  description = "value"
  type        = string
}
variable "region" {
  description = "value"
  type        = string
}
variable "role_arn" {
  description = " The ARN of the IAM role"
  type = string
}