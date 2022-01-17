variable "aws_region" {
  description = "aws region"
  default = "eu-central-1"
}

variable "aws_profile_access_key_path" {
  description = "aws access key"
  default = "/home/ubuntu/.aws/credentials"
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
  default = "prod"
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 2
}

variable "image_tag" {
  description = "image tag"
  default = "latest"
}

variable "ecr_repository_url" {
  type = string
  default = "367668710117.dkr.ecr.eu-central-1.amazonaws.com/ecr"
}

