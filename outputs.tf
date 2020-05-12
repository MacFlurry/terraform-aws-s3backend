# three pieces of information that a workspace will need to be able to
# initialize and deploy against the S3 backend.

# # The name of the bucket
# # The region the S3 backend is deployed to
# # The arn of the role that can be assumed
# ---
# Since this isn’t the root module,
# the outputs will need be bubbled up in order to be visible after a terraform apply

output "config" {
  value = {
    bucket = aws_s3_bucket.s3_bucket.bucket
    region = data.aws_region.current.name
    role_arn = aws_iam_role.iam_role.arn
    dynamodb_table = aws_dynamodb_table.dynamodb_table.name
  }
}