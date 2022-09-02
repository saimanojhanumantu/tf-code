
resource "aws_instance" "web_instance" {
  ami           = "ami-0533f2ba8a1995cf9"
  instance_type = "t3.nano"
  key_name      = "MyKeyPair"

  subnet_id                   = aws_subnet.private_subnet[0].id
  vpc_security_group_ids      = [aws_security_group.default.id]
  associate_public_ip_address = true

  tags = {
    "Name" : "Kanye"
  }
}
