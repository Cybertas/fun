
variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleAppServerInstanc_from_variables.tf"
}



variable "instance_type" {
  default = "t2.micro"
}
