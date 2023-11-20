data "aws_lb" "api" {
  arn = var.alb_arn
}

resource "aws_lb_target_group" "api" {
  name        = var.name
  port        = var.port
  protocol    = "HTTP"
  target_type = "ip"
  vpc_id      = var.vpc_id
  health_check {
    enabled = true
    path    = var.health_check_path
  }
}


resource "aws_lb_listener_rule" "api" {
  listener_arn = var.alb_listener_arn

  action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.api.arn
  }

  condition {
    host_header {
      values = [var.hostname]
    }
  }
}
