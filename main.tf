resource "aws_instance" "leo" {
  ami = "ami-0f3c7d07486cad139"
  instance_type = "t2.small"
  tags = {
    Name = "leo"
  }
}

resource "aws_instance" "harika" {
  ami = "ami-0f3c7d07486cad139"
  instance_type = "t2.small"
  tags = {
    Name = "harika"
  }
}

resource "aws_instance" "hemanth" {
  ami = "ami-0f3c7d07486cad139"
  instance_type = "t2.small"
  tags = {
    Name = "hemanth"
  }
}