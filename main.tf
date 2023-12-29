resource "aws_instance" "jenkins" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = aws_default_subnet.default_az1.id
  vpc_security_group_ids = ["${aws_security_group.allow_22_8080.id}"]
  key_name               = var.key_name

  tags = {
    "name" = "jenkins-server"
  }
}

resource "null_resource" "runscript" {
#   ssh into ec2 instance
    connection {
     type = "ssh"
     user = "ubuntu"
     private_key = file("~/.ssh/authorized_keys/ssh-key-pair.pem")
     host = aws_instance.jenkins.public_ip
     # timeout = "4m"
 } 
#    copy install jenkins.sh file form local to ec2 instance
  provisioner "file" {
     source      = "jenkins.sh"
     destination = "/tmp/jenkins.sh"
 }
#  run script into ec2 instance 
  provisioner "remote-exec" {
     inline = [ 
        "sudo chmod +x /tmp/jenkins.sh",
        "sh /tmp/jenkins.sh" ]
  }
 depends_on = [ aws_instance.jenkins ]
}
  
