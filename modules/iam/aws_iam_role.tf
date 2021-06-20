resource "aws_iam_role" "sample_role" {
  name = "sample_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          AWS = "*"
        }
      },
    ]
  })

  tags = {
    tag-key = "tag-value"
  }
}
