resource "local_file" "password" {
    content = "mipassword"
    filename = "password.tx"
  
}
resource "random_string" "iac_random" {
  
}