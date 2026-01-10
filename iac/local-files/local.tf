resource "local_file" "pet1" {
  filename = "./pets.txt"
  content = "We love pets !"
  file_permission = "0701"
}