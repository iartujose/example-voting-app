// My Variables in Terraform

variable "filename" {
    default = "./pets.txt"
    type = string // Optional - [string, number, bool, list, map, set, object, tuple]
    description = "Description is optional"
}

variable "content" {
    default = "We love pets !"
}

variable "file_permission" {
    default = "0701"
}

variable "prefix"{
    default = ["Mr", "Mrs", "Sir"]
    type = list(string)
}

variable "file-content"{
    type = map(string)
    default = {
        "statement1" = "We love pets!"
        "statement2" = "We love animals!"
    }
}

variable "pet_count" {
    type = map(number)
    default={
        dogs = 1
        cats = 2
        birds = 3
    }
}

variable "fruit" {
    type = set(string) // Duplicates are NOT allowed
    default = ["apple", "banana", "orange", "apple", "banana"]
}

variable "bella"{
    type = object({ // combined any type of variables
      name = string
      color = string
      age = number
      food = list(string)
      favorite_pet = bool
    })

    default = {
      name = "Bella"
      color = "brown"
      age = 2
      food = ["chicken", "carrots"]
      favorite_pet = true
    }
}

variable kitty {
    type = tuple ([string, number, bool])
    default = ["Kitty", 1, true]
}

variable emptyVar {
    type = string
}

variable separator {
    type = string
}

variable length {
    type = number
}