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

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}
variable "app_name" {
    description = "Name of project"
    type = string
    default = "web"
}
variable "environment" {
  type = string
  default = "dev"
}
variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}
variable "app_port_ssh" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 22
}
variable "app_count" {
  description = "Number of docker containers to run"
  default     = 1
}

variable "image_tag" {
  description = "image tag from git commits"
  default = "latest"
}

variable "taskdef_template" {
  default = "cb_app.json.tpl"
}
variable "ecr_repository_url" {
  type = string
  default = "367668710117.dkr.ecr.eu-central-1.amazonaws.com/ecr"
}