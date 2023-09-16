# output "azs" {
#     value = slice (data.aws_availability_zones.available.names,0,2)
# }

output "vpc_id" {
    value = aws_vpc.main.id
}

output "public_subnet_id" {
    value = aws_subnet.public[*].id
}

output "private_subnet_id" {
    value = aws_subnet.private[*].id
}

output "database_subnet_id" {
    value = aws_subnet.database[*].id
}