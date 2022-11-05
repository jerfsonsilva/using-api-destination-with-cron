# API destination
resource "aws_cloudwatch_event_api_destination" "say-hello" {
  name                             = "say-hello"
  description                      = "An APi destination to say hello"
  invocation_endpoint              = var.say_hello_api_destination
  http_method                      = var.say_hello_api_destination_method
  invocation_rate_limit_per_second = 20
  connection_arn                   = aws_cloudwatch_event_connection.say-hello.arn
}

resource "aws_cloudwatch_event_connection" "say-hello" {
  name               = "say-hello-connection"
  description        = "A connection to say hello api destination used by cloudwatch event"
  authorization_type = "BASIC"

  auth_parameters {
    basic {
      username = var.say_hello_username
      password = var.say_hello_password
    }
  }
}