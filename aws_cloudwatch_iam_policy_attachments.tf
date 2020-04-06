resource "aws_iam_policy_attachment" "cloudwatch_ssm_agent" {
  name       = "cloudwatch_ssm_policy_attachment"
  roles      = [aws_iam_role.cloudwatch_ssm_agent.id]
  policy_arn = aws_iam_policy.cloudwatch_ssm_agent_policy.arn
}