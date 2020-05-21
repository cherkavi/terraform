# simple machine
# [instance_type](https://aws.amazon.com/ec2/physicalcores/)  
# [ami](https://eu-central-1.console.aws.amazon.com/ec2/v2/home?region=eu-central-1#LaunchInstanceWizard:)  

provider "aws" {
   access_key = "AKIA4"
   secret_key = "Wa5rB"
   region = "eu-central-1"
   version = "~> 2.35"
}

resource "aws_instance" "my-ubuntu-instance" {
    ami = "ami-0cc0a36f626a4fdf5"
    instance_type = "t3.micro"
}
