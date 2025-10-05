output "public_ip" {
  description = "To print the public Ip of my ec2 instance"
  value = aws_instance.example[*].public_ip
}