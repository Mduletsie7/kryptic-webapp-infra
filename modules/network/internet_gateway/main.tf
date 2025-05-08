resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.mdumisi_vpc.id

    tags = var.tags
}