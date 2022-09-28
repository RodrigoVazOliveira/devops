resource "aws_dynamodb_table" "dynamodb-hml" {
    provider       = aws.us-east-2
    name           = "GameScores"
    billing_mode   = "PAY_PER_REQUEST"
    hash_key       = "UserId"


    attribute {
        name = "UserId"
        type = "S"
    }
}