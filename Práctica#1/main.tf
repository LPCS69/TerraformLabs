resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "local_sensitive_file" "key_file" {
  content  = tls_private_key.ssh_key.private_key_pem
  filename = "${var.key_name}.pem"
}