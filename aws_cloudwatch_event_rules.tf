resource "aws_cloudwatch_event_rule" "ssm_agent_update" {
  name                = "ssm_agent_update"
  description         = "SSM-Agent-update: Rule to trigger SSM action to update the SSM Agent to the latest version on all tagged instances"
  schedule_expression = "rate(${var.schedule_rate})"
  is_enabled          = "true"
}