# Fill in default value for ami_name variable
data "aws_ami" "instance-ami" {
  owners = ["self"]
  name_regex = var.ami-name
  most_recent = true
  
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_subnet" "us-west-2a" {
  tags = {
    Name = "us-west-2a"
  }
}
