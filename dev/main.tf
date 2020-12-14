module "my_vpc" {
	source		= "../module/vpc"
	cidr_block	= "192.0.0.0/16"
	tenancy		= "default"
	vpc_id 		= "${module.my_vpc.vpc_id}"
	subnet_cidr	= "192.0.1.0/24"

module "my_ec2" {
	source 		= "../module/ec2"
	ami_id		= "image_id"
	instance_type	= "t2.micro"
	subnet_id	= "${module.my_vpc.subnet_id}"




