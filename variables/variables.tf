variable "nombre" {
  type    = string
  default = "Luis Pablo"
}

variable "num" {
  type    = number
  default = 100
}

variable "persona" {
  type = map(any)
  default = {
    filename = "persona.txt"
    content  = "Luis Pablo Céspedes"
  }
}

variable "genero" {
  type    = list(string)
  default = ["Masculino", "Femenino", "Otros..."]
}

variable "identificacion" {
  type    = number
}
variable "discos" {
  type = map(any)
	description = "tipos de almacenamiento"
}

