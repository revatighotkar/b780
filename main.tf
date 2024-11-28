

provider "aws"{
region = "ap-south-1"
}
resource "aws_instance" "ec2instance" {
instance_type =  "t2.micro"
ami = "ami-0614680123427b75e"
vpc_security_group_ids =  ["sg-0df0c3e498cb32fbe"]
  key_name = "reva2511"
  subnet_id = "subnet-08d3a21d3b3c6e820"
count = 100
}