resource "aws_iam_policy" "cloudwatch_ssm_agent_policy" {
  name        = "SSM_agent_cloudwatch_policy"
  description = "Policy to allow Cloudwatch to initiate SSM actions"
  policy      = data.aws_iam_policy_document.cloudwatch_ssm_agent.json
}
