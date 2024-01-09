output "task_definition_arn" {
  value       = aws_ecs_task_definition.app.arn
  sensitive   = false
  description = "The ARN of the task definition."

}

output "task_security_group_id" {
  value       = aws_security_group.ecs_tasks.id
  sensitive   = false
  description = "The id of the Security Group used in tasks."

}

output "task_lb_target_group_arn" {
  value       = try(aws_lb_target_group.app.0.arn, null)
  sensitive   = false
  description = "The ARN of the task load balancer target group."

}
