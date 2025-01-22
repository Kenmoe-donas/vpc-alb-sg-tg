output "key_name" {
  value = aws_key_pair.key.key_name
}

output "pem-key-name" {
  value = local_file.key1.filename
}