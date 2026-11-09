# ─────────────────────────────────────────
#  EC2 Instances
# ─────────────────────────────────────────
resource "aws_instance" "webserver1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.webSg.id]
  subnet_id              = aws_subnet.sub1.id
  user_data              = base64encode(file("${path.module}/userdata1.sh"))

  tags = {
    Name = "WebServer-1"
  }
}

resource "aws_instance" "webserver2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.webSg.id]
  subnet_id              = aws_subnet.sub2.id
  user_data              = base64encode(file("${path.module}/userdata2.sh"))

  tags = {
    Name = "WebServer-2"
  }
}
