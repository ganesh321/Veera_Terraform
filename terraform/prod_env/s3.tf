resource "aws_s3_bucket" "yerramsettiveeraganeshprod" {
  bucket = "yerramsettiveeraganeshprod"
  acl = "private"
  versioning {
    enabled = true
  }

  tags ={
    Name = "yerramsettiveeraganeshprod"
  }

}
