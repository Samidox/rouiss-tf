# resource "aws_internet_gateway" "ig" {
#     vpc_id = aws_vpc.pro-vpc.id
#     tags = {
#       Name = "MAIN-IG"
#     }  
# }