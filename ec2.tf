provider "aws" {
  region = "ap-south-1"  
}

resource "aws_instance" "my" {
  ami           = "ami-03f4878755434977f" 
  instance_type = "t2.micro"
  key_name      = "new-key"
  security_groups = ["sg-038f5dbc2b42e1eaa"] 

  tags = {
  
    Name = "instance-1"
  }
}

