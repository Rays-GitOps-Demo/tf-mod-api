module "test_api" {
  source            = "../terraform"
  name              = "test-api"
  image             = "mendhak/http-https-echo"
  port              = 8080
  cpu               = 1024
  memory            = 2048
  hostname          = "test-api.${var.domain}"
  health_check_path = "/hc"
  environment = [
    {
      name  = "HTTP_PORT"
      value = "8080"
    }
  ]
  desired_count          = 1
  route53_hosted_zone_id = data.aws_route53_zone.test.id
  vpc_id                 = var.vpc_id
  subnet_ids             = var.subnet_ids
  security_group_id      = aws_security_group.test.id
  alb_arn                = aws_lb.test.arn
  alb_listener_arn       = aws_lb_listener.http.arn
  ecs_cluster_id         = aws_ecs_cluster.test.id
}
