resource "local_file" "password" {
  # 7.1 y 7.4
  content  = "Password: ${random_string.iac_random.result}"

  # Corregir nombre archivo
  filename = "password.txt"

  # 7.2
  file_permission = "0400"

  # 7.3
  directory_permission = "0600"
}
resource "random_string" "iac_random" {
    length = 10
    min_upper = 5
    special = true
    min_special = 2

    
}