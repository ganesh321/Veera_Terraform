resource "aws_instance" "VeeraServer" {
    ami = "ami-0c2b8ca1dad447f8a"
    instance_type = "t2.micro"
    availability_zone = "us-east-1a"
    key_name = "veera_dont_delete.key"
    subnet_id = aws_subnet.subnet1-public.id
    vpc_security_group_ids = [aws_security_group.allow_all.id]

    tags = {
      Name = "VeeraServer_TestServer"
    }

} 
