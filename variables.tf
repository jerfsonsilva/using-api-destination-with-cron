# vars
variable "say_hello_api_destination" {
  default = "YOURURL/hello"
  type    = string
}
variable "say_hello_api_destination_method" {
  default = "GET"
  type    = string
}

variable "say_hello_username" {
  default = "doNotNeed"
  type    = string
}
variable "say_hello_password" {
  default = "doNotNeed"
  type    = string
}

variable "say_hello_schedule_expression" {
  default = "rate(1 minute)" #"cron(0 * * ? * *)"
  type    = string
}

variable "say_hello_body" {
  default = "{\"stage\": \"prod\"}"
  type    = string
}
