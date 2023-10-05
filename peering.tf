resource "aws_vpc_peering_connection" "peering" {
  #peer_owner_id = var.peer_owner_id
  count = var.is_peering_required ? 1 : 0
  peer_vpc_id   = aws_vpc.main.id # acceptor_id
  vpc_id        = var.default_vpc_id # requestor_id
  auto_accept   = true

  tags = {
    Name = "VPC Peering between default VPC and ${var.project_name} vpc"
  }
}

resource "aws_route" "default-route" {
  count = var.is_peering_required ? 1 : 0
  route_table_id            = var.default_route_table_id
  destination_cidr_block    = var.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[0].id
}

resource "aws_route" "public-route" {
  count = var.is_peering_required ? 1 : 0
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = var.default_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[0].id
}
resource "aws_route" "private-route" {
  count = var.is_peering_required ? 1 : 0
  route_table_id            = aws_route_table.private.id
  destination_cidr_block    = var.default_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[0].id
}

resource "aws_route" "Database-route" {
  count = var.is_peering_required ? 1 : 0
  route_table_id            = aws_route_table.database.id
  destination_cidr_block    = var.default_cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.peering[0].id
}