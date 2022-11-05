# Rule to invoke lambda
resource "aws_cloudwatch_event_rule" "say-hello" {
  name                = "say-hello"
  description         = "A Job to say hello"
  schedule_expression = var.say_hello_schedule_expression
}

