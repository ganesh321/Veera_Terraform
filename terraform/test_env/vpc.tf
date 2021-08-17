resource "aws_vpc" "default" {
    cidr_block = "${var.vpc_cidr}"
    enable_dns_hostnames = true

      depends_on = [
    aws_s3_bucket.yerramsettiveeraganeshtest,
  ]
    tags = {
        Name = "${var.vpc_name}"
	Owner = "Sreeharsha Veerapalli"
	environment = "${var.environment}"
    }
}

resource "aws_internet_gateway" "default" {
    vpc_id = "${aws_vpc.default.id}"
	tags = {
        Name = "${var.IGW_name}"
    }
}
