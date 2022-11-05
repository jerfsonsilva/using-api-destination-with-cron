# Target to invoke lambda
resource "aws_cloudwatch_event_target" "say-hello" {
  arn      = aws_cloudwatch_event_api_destination.say-hello.arn
  rule     = aws_cloudwatch_event_rule.say-hello.name
  role_arn = aws_iam_role.say-hello-job-role.arn

  http_target {
    query_string_parameters = {
      Body = var.say_hello_body
    }
  }
}