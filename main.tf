resource "aws_iam_user" "Kumba" {
  name = var.iam_user
}

resource "aws_iam_policy" "policy" {
  name        = var.iam_policy_name
  description = var.iam_policy_description
  policy      = var.iam_policy
}

resource "aws_iam_user_policy_attachment" "user_policy_attachment" {
  user       = aws_iam_user.user.name
  policy_arn = aws_iam_policy.policy.arn
}
