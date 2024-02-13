provider "aws" {
  region = "ap-south-1"  
}

resource "aws_instance" "my-instance" {
  ami           = "ami-03f4878755434977f"         
  instance_type = "t2.micro"             
  key_name      = "new-key"
  subnet_id     = "subnet-0da54f43144cbf0c0"
  security_groups = ["sg-059f0f4fe0c3d6688"]

  tags = {
  
    Name = "instance-1"
  }
}

