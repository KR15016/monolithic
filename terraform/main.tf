resource "aws_instance" "key" {
ami = "ami-005f9685cb30f234b"
instance_type = "t2micro"
vpc_security_group_ids = [aws_security_group.project.ids]
tags = {
Name = "project"
Environment = "productio"
}
key_name = "monolithic"
}
