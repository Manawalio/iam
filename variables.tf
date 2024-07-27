variable "aws_region" {
  description = "The AWS region to create resources in"
  type        = string
  default     = "us-west-2"
}

variable "iam_user" {
  description = "The name of the IAM user"
  type        = string
  default     = "my-iam-user"
}

variable "iam_policy_name" {
  description = "The name of the IAM policy"
  type        = string
  default     = "my-iam-policy"
}

variable "iam_policy_description" {
  description = "The description of the IAM policy"
  type        = string
  default     = "My custom IAM policy"
}

variable "iam_policy" {
  description = "The IAM policy document"
  type        = string
  default     = <<EOF
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
}
