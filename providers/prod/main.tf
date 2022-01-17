module "ecr" {
    source = "../../modules//ecr"
    aws_region = var.aws_region
    aws_profile = var.aws_profile
    #remote_state_bucket = var.bucket_name
    environment = var.environment
    app_name = var.app_name
}


module "init-build" {
    source = "../../modules//init-build"
    aws_region = var.aws_region
    aws_profile = var.aws_profile
    #remote_state_bucket = var.bucket_name
    environment = var.environment
    app_name = var.app_name
    working_dir = "../../app"
    image_tag = var.image_tag
}

module "ecs-cluster" {
    source = "../../modules//cluster"
    aws_region = var.aws_region
    aws_profile = var.aws_profile
    #remote_state_bucket = var.bucket_name
    environment = var.environment
    app_name = var.app_name
    image_tag = var.image_tag
    ecr_repository_url = var.ecr_repository_url
    app_count = var.app_count
}