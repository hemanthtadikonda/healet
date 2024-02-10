resource "aws_instance" "leo" {
  ami                    = var.ami
  instance_type          = var.instance_type
  vpc_security_group_ids = [ var.sg_grp_id ]
  tags                   = {
    Name = var.project_name
  }
  provisioner "local-exec" {
    command = <<EOF
  yum install ansible -y
  sleep 20
  ansible-pull -i localhost, -U https://github.com/hemanthtadikonda/leo.git leo.yml
  EOF

  }
}


resource "aws_route53_record" "www" {
  zone_id = var.zone_id
  name    = var.project_name
  type    = "A"
  ttl     = 300
  records = [aws_instance.leo.public_ip]
}





