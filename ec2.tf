provider "aws" {
  region = "ap-south-1"  
}


resource "aws_security_group" "instance_sg" {
  name        = "my-instance-sg"
  description = "Security group for the example EC2 instance"
  
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }
  
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"  
    cidr_blocks = ["0.0.0.0/0"]
  }

  tag = {
    name = "new-sg"
  }
}

resource "aws_instance" "my-instance" {
  ami           = "ami-03f4878755434977f"         
  instance_type = "t2.micro"             
  key_name      = "new-key"
  subnet_id     = "subnet-0da54f43144cbf0c0"
  security_groups = ["sg-038f5dbc2b42e1eaa"]

  tags = {
  
    Name = "instance-1"
  }
}

