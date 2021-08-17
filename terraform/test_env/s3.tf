resource "aws_s3_bucket" "yerramsettiveeraganeshtest" {
  bucket = "yerramsettiveeraganeshtest"
  acl = "private"
  versioning {
    enabled = true
  }

  tags ={
    Name = "yerramsettiveeraganeshtest"
  }

}
