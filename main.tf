resource "aws_instance" "main" {
  ami = "ami-0f3c7d07486cad139"
  instance_type = "t2.small"
  tags = {
    Name = "leo"
  }
}

resource "aws_instance" "main" {
  ami = "ami-0f3c7d07486cad139"
  instance_type = "t2.small"
  tags = {
    Name = "harika"
  }
}

resource "aws_instance" "main" {
  ami = "ami-0f3c7d07486cad139"
  instance_type = "t2.small"
  tags = {
    Name = "hemanth"
  }
}