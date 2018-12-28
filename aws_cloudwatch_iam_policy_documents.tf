data "aws_iam_policy_document" "cloudwatch_ssm_agent" {
  statement {
    effect    = "Allow"
    actions   = ["ssm:SendCommand"]
    resources = ["*"]
  }
}
