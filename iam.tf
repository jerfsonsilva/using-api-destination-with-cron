# IAM role for cloudwatch event to invoke lambda
data "aws_iam_policy_document" "say-hello-role-policy" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["apidestinations.events.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "say-hello-job-role" {
  name               = "say-hello-job-role"
  assume_role_policy = data.aws_iam_policy_document.say-hello-role-policy.json

  inline_policy {
    name = "say_hello_job_inline_policy"

    policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Action   = ["events:*"]
          Effect   = "Allow"
          Resource = "*"
        },
      ]
    })
  }

  tags = {
    tag-key = "say-hello-job-role"
  }
}
