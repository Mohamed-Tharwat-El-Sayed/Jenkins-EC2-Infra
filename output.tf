output "jenkins_url" {
  value = join("",["http://", aws_instance.jenkins.public_dns, ":", var.jenkins])
}