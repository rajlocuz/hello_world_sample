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
      key = "Name"
      value = "Demo Sample instance"
      propagate_at_launch = true
    }
}
