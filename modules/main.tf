locals {
  filename = "test.txt"
}

module "file-module" {
  source = "./file-module"
  in-filename = local.filename
}

module "file-module-dos" {
  source = "./file-module"

  in-filename = "dos.txt"
}

output "archivo-dos" {
  value       = module.file-module-dos.out-filename
}