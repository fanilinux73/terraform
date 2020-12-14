  ami           = "${var.ami_id}"
  instance_type = "${var.instance_type}"
  subnet_id	= "${var.subnet_id}"


variable "ami_id" {}
variable "instance_type" {
	default 	= "t2.micro"
}

variable "subnet_id" {}
