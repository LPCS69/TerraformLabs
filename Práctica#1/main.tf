resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_sensitive_file" "key_file" {
  content  = tls_private_key.ssh_key.private_key_pem
  filename = "${var.key_name}.pem"
}

resource "aws_s3_bucket" "practica1_bucket" {
  bucket = var.bucket_name

  tags = {
    Environment = "dev"
  }
}

resource "aws_s3_object" "ssh_key_object" {
  bucket = aws_s3_bucket.practica1_bucket.id
  key    = "${var.key_name}.pem"
  source = "${var.key_name}.pem"
}

resource "aws_vpc" "practica1_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "lab-LuisPablo"
  }
}