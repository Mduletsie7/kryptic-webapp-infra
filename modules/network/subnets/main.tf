resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.mdumisi_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = var.tags
}

resource "aws_subnet" "private_subnet" {
  vpc_id = aws_vpc.mdumisi_vpc.id
  cidr_block = "10.0.2.0/24"

    tags = var.tags
}