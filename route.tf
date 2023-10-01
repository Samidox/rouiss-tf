resource "aws_route_table" "route" {
    vpc_id = aws_vpc.pro-vpc.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.ig.id
        
    }
    tags = {
      Name = "r-table1"
    }
}


resource "aws_route_table_association" "subnet-association" {
    subnet_id = aws_subnet.pro-subnet.id
    route_table_id = aws_route_table.route.id
  
}