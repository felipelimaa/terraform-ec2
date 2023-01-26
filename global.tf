data "aws_region" "current" {}

data "aws_iam_user" "user" {
    user_name = "ec2"
}

resource "aws_iam_access_key" "access_key" {
    user = data.aws_iam_user.user.user_name
}