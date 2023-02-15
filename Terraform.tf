provider "aws" {
  region ="Chose your region accoding to your reqirment"
  access_key="yor_aws_access_key"
  secret_key="your_aws_secret_key"
#   these two key in your profile section user Security credentials
}

resource "aws_instance" "testcase1"{
  ami="ami-0557a15b87f6559cf"
#  this ami will change time to time by aws so you can choose any ami acoding to you reqirment.
  instance_type="t2.micro"
  key_name="key_pair_name"
#  if you don't use key_name here aws will defultly add key_pair 
  vpc_security_group_ids=["sg-***************"]
#  if you don't use security_group here aws will defultly add security group to this ec2-instance 
}

# these two resource is optional one becuase these two will be used to stop instance to run and running instance to stop using terraform
resource "aws_ec2_instance_state" "testcase1"{
  instance_id= aws_instance.testcase1.id
  state="running"
}

resource "aws_ec2_instance_state" "testcase2"{
  instance_id= aws_instance.testcase1.id
  state="stopped"
}
