// HCL (HarshiCorp Language) - Declarative Language 

resource "aws_instance" "webserver" {
    ami = "ami-"
    instance_type = "t2.micro"
}

