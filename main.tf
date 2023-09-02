resource "aws_instance" "redhat" {
  instance_type = var.instance_type
  ami = var.instance_ami
  vpc_security_group_ids = [aws_security_group.dynamic-sg.id]
  tags = {
    Name = var.instance_name
  }
  user_data = file("script.sh")
  key_name = "shell-mumbai"
}
