variable "instance_name" {
  description = "Name of the ec2 instance"
  type = string
  default = "application server instance"
}
variable "instance_type" {
  description = "ec2 instance type"
  type = string
  default = "t2.micro"
}

variable "instance_ami" {
  description = "ami ec2 instance"
  type = string
  default = "ami-008b85aa3ff5c1b02"
}
variable "vpc_id" {
  description = "description for vpc id"
  type = string
  default = "vpc-0cca34e33bf33a267"
}
variable "security_group_name" {
  description = "Security group name"
  type        = string
  default     = "dynamic-jenkins-sg"
}

