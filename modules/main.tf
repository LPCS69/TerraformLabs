locals {
  filename = "test.txt"
}

module "file-module" {
  source        = "./file-module"
  in-filename   = local.filename
  in-content    = "Este es el archivo #1 de LuisPablo"
  in-permission = "0400"
}

module "file-module-dos" {
  source        = "./file-module"
  in-filename   = "dos.txt"
  in-content    = "Este es el archivo #2 de LuisPablo"
  in-permission = "0600"
}

