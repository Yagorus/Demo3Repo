variable "work_dir"{
    description = "placement of app"
    default = "/home/ubuntu/Demo3Repo/app"
}

variable "ecr_repository_url" {
  type = string
  default = "367668710117.dkr.ecr.eu-central-1.amazonaws.com/ecr"
}

variable "aws_profile_access_key_path" {
  description = "aws access key"
  default = "/home/ubuntu/.aws/credentials"
}

variable "app_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "aws_profile" {
    type = string
}
variable "working_dir"{
    type = string
}
variable "image_tag"{
    type = string
}
variable "aws_region"{
    type = string
}
variable "remote_state_bucket" {}
