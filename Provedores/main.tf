resource "local_file" "password" {
    content = "mipassword"
    filename = "password.tx"
  
}
resource "random_string" "iac_random" {
    length = 10
    min_upper = 5
    special = true
    min_special = 2

    
}