variable "subnet_id" {
  description = "Subnet for EC2 instances."
}

variable "region" {
  description = "Region for EC2 instances."
}

variable "access_key" {
  description = "Access key is IAM user credentials."
}

variable "secret_key" {
  description = "Secret key is IAM user credentials."
}

variable "amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-0de53d8956e8dcf80"
    "us-east-2" = "ami-02bcbb802e03574ba"
  }
}
