resource "aws_vpc" "t_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "test-vpc"
  }
}


output "vpc-id" {
  value = aws_vpc.t_vpc.id
}

output "cidr" {
  value = aws_vpc.t_vpc.cidr_block
}
