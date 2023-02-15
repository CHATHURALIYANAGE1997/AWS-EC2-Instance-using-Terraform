provider "aws" {
  region ="Chose your region accoding to your reqirment"
  access_key="yor_aws_access_key"
  secret_key="your_aws_secret_key"
  //these two key in your profile section user Security credentials
}

resource "aws_instance" "testcase1"{
  ami=
  instance_type=
  key_name=
  vpc_security_group_ids=["sg-***************"]
}

resource "aws_ec2_instance_state" "testcase1"{

}

resource "aws_ec2_instance_state" "testcase2"{

}
