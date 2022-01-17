variable "bucket_name" {}

variable "bucket_description" {
  type        = string
  default     = ""
  description = "S3 Bucket for saving terraform state"
}