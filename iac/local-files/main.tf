// Config .TF file using Vars from variables.tf

resource "local_file" "pet" {
  filename = var.filename
  content = var.content
  file_permission = var.file_permission
}

resource "random_pet" "my-pet" {
  prefix = "Mrs"
  separator = "."
  length = "1"
}
