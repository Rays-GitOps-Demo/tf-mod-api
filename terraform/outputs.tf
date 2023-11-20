output "base_url" {
  value = "http://${var.hostname}"
}

output "health_check_url" {
  value = "http://${var.hostname}${var.health_check_path}"
}

output "aws_lb_listener_rule_arn" {
  value = aws_lb_listener_rule.api.arn
}

output "aws_lb_listener_rule_id" {
  value = aws_lb_listener_rule.api.id
}

output "aws_lb_target_group_arn" {
  value = aws_lb_target_group.api.arn
}

output "aws_lb_target_group_id" {
  value = aws_lb_target_group.api.id
}

output "aws_ecs_task_definition_arn" {
  value = aws_ecs_task_definition.api.arn
}

output "aws_ecs_task_definition_id" {
  value = aws_ecs_task_definition.api.id
}

output "aws_ecs_service_id" {
  value = aws_ecs_service.api.id
}

output "aws_route53_record_id" {
  value = aws_route53_record.api.id
}
