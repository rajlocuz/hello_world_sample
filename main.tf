provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "${var.region}"
}

resource "aws_instance" "Demo-hello-world" {
    #description = "Demo Instance for exapmple"
    instance_type = "t2.micro"
    ami = "${lookup(var.amis, var.region)}"
    tags {
      name = "Demo sample instance"
    }
}
