provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "us-east-1"
}

resource "aws_security_group" "ubuntu_nginx" {
  name        = "ubuntu_nginx"
  description = "allow ssh and http service"
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocal    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
   ingress {
    from_port   = 80
    to_port     = 80
    protocal    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
   egress {
    from_port   = 0
    to_port     = 0
    protocal    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags {
    Name = "ubuntu-nginx"
  }
 }
resource "aws_instance" "nginx" {
  ami           = ""
  instance_type = ""
  associate_public_ip_address = true
  security_groups = ["ubuntu_nginx"]
  key_name = "{var.key_name}"
    tags {
    Name = "ubuntu-nginx"
  }
  
  output "ip" {
    value = "${aws_instance.nginx.public_ip}"
}
