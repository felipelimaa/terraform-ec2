resource "aws_instance" "ec2-use1-instance" {
    ami = "ami-0b5eea76982371e91"
    instance_type = "t2.micro"

    tags = {
        Name = "${data.aws_iam_user.user.user_name}-${data.aws_region.current.name}-instance"
    }
}