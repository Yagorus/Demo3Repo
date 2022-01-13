[
    {
      "name": "${var.app_name}-container",
      "image": "${aws_ecr_repository.aws-ecr.repository_url}:latest",
      "essential": true,
      "portMappings": [
        {
          "containerPort": 80
        }
      ],
      "cpu": 256,
      "memory": 512,
      "networkMode": "awsvpc"
    }
  ]