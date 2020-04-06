resource "aws_cloudwatch_event_target" "ssm_agent_update_target" {
  rule     = aws_cloudwatch_event_rule.ssm_agent_update.name
  arn      = "arn:aws:ssm:${data.aws_region.current.name}::document/AWS-UpdateSSMAgent"
  role_arn = aws_iam_role.cloudwatch_ssm_agent.arn

  run_command_targets {
    key    = var.run_command_target_key
    values = var.run_command_target_values
  }
}
