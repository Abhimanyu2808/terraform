variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "private_subnet_cidr" {
    default = "10.0.0.0/20"
}

variable "public_subnet_cidr" {
    default = "10.0.1.0/20"
}

variable "project" {
    default = "devops"
}

variable "env" {
    default = "dev"
}

variable "image_id" {
    default = "ami-03f4878755434977f"
}
variable "instance_type" {
    default = "t2.micro"
}
variable "key_pair" {
    default = "new-key"
}
