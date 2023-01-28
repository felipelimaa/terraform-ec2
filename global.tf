data "aws_region" "current" {}

data "aws_iam_user" "user" {
    user_name = "ec2"
}

resource "aws_iam_access_key" "access_key" {
    user = data.aws_iam_user.user.user_name
}

resource "aws_security_group" "ec2_use1_sec_group_web" {
    name = "${data.aws_iam_user.user.user_name}-${data.aws_region.current.name}-sec-group-web"
    description = "Allow HTTP and HTTPs traffic"

    ingress {
        description         = "Https ingress"
        from_port           = 443
        to_port             = 443
        protocol            = "tcp"
        cidr_blocks         = ["0.0.0.0/0"]
        ipv6_cidr_blocks    = ["::/0"]
    }

    ingress {
        description         = "Http ingress"
        from_port           = 80
        to_port             = 80
        protocol            = "tcp"
        cidr_blocks         = ["0.0.0.0/0"]
        ipv6_cidr_blocks    = ["::/0"]
    }

    egress {
        description = "All egress"
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "${data.aws_iam_user.user.user_name}-${data.aws_region.current.name}-sec-group-web"
    }
}