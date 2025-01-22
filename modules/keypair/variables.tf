variable "key_algorithm" {
  description = "This is the key algorithm"
  default = "RSA"
}

variable "rsa_bits_size" {
  description = "This is the number bits"
  default = 2048
}

variable "key_name" {
  description = "This is the key name you want"
}

variable "pem_file_name" {
  description = "This is the file name you want to save localy"
}

variable "file_permission" {
  description = "file permission"
  default = 400
}