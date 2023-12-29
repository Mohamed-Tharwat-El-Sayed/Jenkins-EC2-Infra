variable "region" {
   type = string
   default = "us-east-1"
}

variable "profile" {
   default = "default"
}

variable "ami" {
   default = "ami-06aa3f7caf3a30282"
}

variable "instance_type" {
   default =  "t2.micro"
}

variable "key_name" {
   default = "ssh-key-pair"
}

variable "ssh" {
   default = 22
}

variable "jenkins" {
   default = 8080
}

# variable "connection" {
#    default = 80
# }