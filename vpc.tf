resource "aws_vpc" "ec2_use1_vpc" {
  cidr_block = "10.1.0.0/16"

  tags = {
    Name = "${data.aws_iam_user.user.user_name}-${data.aws_region.current.name}-vpc"
  }
}