variable "aws_region" {
  description = "aws region"
  default = "eu-central-1"
}

variable "aws_profile_access_key_path" {
  description = "aws access key"
  default = "C:/Users/yegor/.aws/credentials.txt"
}

variable "aws_profile" {
  description = "aws profile"
  default = "default"
}
variable "app_name" {
    description = "Name of project"
    type = string
    default = "web"
}
variable "environment" {
  type = string
  default = "VPC"
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 1
}

variable "image_tag" {
  description = "image tag"
  default = "latest"
}
