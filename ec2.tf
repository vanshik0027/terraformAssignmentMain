# create instance public
resource "aws_instance" "web" {
  ami           = var.images_id
  instance_type = var.type
  key_name      = aws_key_pair.ssh_key_pair.key_name
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]
  subnet_id = aws_subnet.public_subnet.id
  user_data              = file("${path.module}/script.sh")
  tags = {
    Name = "public-Instance"
  }

}   
# Output public IP of the instance
output "public_ip" {
  value = aws_instance.web.public_ip
}
# Create instance in the private subnet
resource "aws_instance" "private_instance" {
  ami           = var.images_id
  instance_type = var.type
  subnet_id     = aws_subnet.private_subnet.id
  key_name      = aws_key_pair.ssh_key_pair.key_name
  vpc_security_group_ids = ["${aws_security_group.allow_tls.id}"]

  tags = {
    Name = "private-instance"
  }
}