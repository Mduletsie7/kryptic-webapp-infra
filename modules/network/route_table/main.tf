resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.mdumisi_vpc.id

  route {
    cidr_block = "0.0.0.0/0" # From any source
    gateway_id = aws_internet_gateway.igw.id
  }

  route {
    ipv6_cidr_block = "::/0"
    # egress_only_gateway_id = aws_egress_only_internet_gateway.eigw.id
  }

    tags = var.tags
}