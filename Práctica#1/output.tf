output "bucket_url" {
  value = "${aws_s3_object.ssh_key_object.bucket}.s3.amazonaws.com/${aws_s3_object.ssh_key_object.key}"
}

output "vpc_id" {
  value = aws_vpc.practica1_vpc.id
}