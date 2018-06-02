resource "aws_iam_user_policy" "bucket" {
  name = "bucket"
  user = "MoEngage"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "Stmt1527851252467",
      "Action": "s3:*",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::devops/*"
    }
  ]
}

EOF
}
