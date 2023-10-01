resource "aws_instance" "pro-instance" {
    ami = "ami-053b0d53c279acc90"
    instance_type = var.instance_type
    subnet_id = aws_subnet.pro-subnet.id
    key_name = "rouiss-pair"
    vpc_security_group_ids = [aws_security_group.sg.id]
    associate_public_ip_address = true
        user_data = <<-EOF
                #!/bin/bash
                apt-get update
                apt-get install -y apache2
                systemctl start apache2
                systemctl enable apache2
                cd /var/www/html
                echo morocco > index.html
                EOF
        tags = {
          Name = "pro-ubuntu"
        }


}

resource "aws_iam_user" "abdo" {
        name = "abdo-rouiss"
}

resource "aws_iam_user" "abdo" {
        name = "abdo"
}
