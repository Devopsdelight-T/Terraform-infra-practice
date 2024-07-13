#ec2 variables

variable "instance_names" {
  type = list
  default = ["db", "backend", "frontend"]
}

variable "image_id" {
  type = string #optional
  default = "ami-0b4f379183e5706b9" #centos
  description = "centos AMI ID" #optional 
}

variable "instance_type" {
  default = "t3.micro"
  type = string
}

variable "common_tags" {
  default = {
  Project = "Expense"
  Environment = "Dev"
  Terraform = "true"
}
}

#sg variables

variable "sg_name" {
  default = "allow_ssh"
  
}
variable "sg_description" {
  default = "allow_ssh"
}
variable "ssh_port" {
  default = 22
}

variable "protocol" {
  default = "tcp"
}

variable "allow_cidr" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}

#r53 variables

variable "zone_id" {
  default = "Z08643653OFT1731QJ0H"
}

variable "domain_name" {
  default = "nagacharan.site"
}