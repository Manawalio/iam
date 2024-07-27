aws_region             = "us-west-2"
iam_user               = "my-iam-user"
iam_policy_name        = "my-iam-policy"
iam_policy_description = "My custom IAM policy"
iam_policy             = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
