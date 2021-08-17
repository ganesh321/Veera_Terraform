resource "aws_s3_bucket" "yerramsettiveeraganeshdev" {
  bucket = "yerramsettiveeraganeshdev"
  acl = "private"
  versioning {
    enabled = true
  }

  tags ={
    Name = "yerramsettiveeraganeshdev"
  }

}
