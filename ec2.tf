resource "aws_instance" "my-instance-ec2" {
    ami = "ami-0b5eea76982371e91"
    instance_type = "t2.micro"

    tags = {
        Name = "my-instance-ec2"
    }
}