resource "aws_ecs_cluster" "example_cluster" {
  name = "example-cluster"
}

resource "aws_ecs_task_definition" "example_task" {
  family                   = "example-task"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]
  cpu                      = "256"
  memory                   = "512"
  
  execution_role_arn = "arn:aws:iam::624733648801:role/ecs-execution-role_test" #aws_iam_role.ecs_execution_role.arn
  
  container_definitions = jsonencode([{
    name  = "example-container",
    image = "nginx:latest",
    portMappings = [{
      containerPort = 80,
      hostPort      = 80,
    }],
  }])
}

/* resource "aws_iam_role" "ecs_execution_role" {
  name = "ecs-execution-role_test"
  
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Action = "sts:AssumeRole",
      Effect = "Allow",
      Principal = {
        Service = "ecs-tasks.amazonaws.com",
      },
    }],
  })
} */

resource "aws_ecs_service" "example_service" {
  name            = "example-service"
  cluster         = aws_ecs_cluster.example_cluster.id
  task_definition = aws_ecs_task_definition.example_task.arn
  launch_type     = "FARGATE"
  
  network_configuration {
    subnets = var.subnet_id # Replace with your subnet IDs
    security_groups = ["sg-063605b6f96f77629"]  # Replace with your security group IDs
  }
  
  depends_on = [aws_ecs_task_definition.example_task]
}
