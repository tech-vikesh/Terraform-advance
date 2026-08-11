#s3 bucket to handle state file

resource "aws_s3_bucket" "remote-s3-bucket" {
  bucket = "josh-batch-10-remote-bucket"

  tags = {
    Name = "josh-batch-10-remote-bucket"
  }
}
#dynamodb
resource "aws_dynamodb_table" "remote-dynamodb-table" {
  name           = "josh-batch-10-remote-table"
  billing_mode   = "PAY_PER_REQUEST"  #PROVISIONED = BILLING OVER
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}  
