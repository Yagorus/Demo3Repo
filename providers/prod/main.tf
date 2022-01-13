module "ecr" {
    source = "../../modules//ecr"
    aws_region = var.aws_region
    aws_profile = var.aws_profile
    #remote_state_bucket = var.bucket_name
    environment = var.environment
    app_name = var.app_name
}


module "ecs-cluster" {
    source = "../../modules//cluster"
    aws_region = var.aws_region
    aws_profile = var.aws_profile
    #remote_state_bucket = var.bucket_name
    environment = var.environment
    app_name = var.app_name
    image_tag = var.image_tag
    ecr_repository_url = module.ecr.ecr_repository_url
    taskdef_template = "../../modules/cluster/cb_app.json.tpl"
    app_count = var.app_count
}