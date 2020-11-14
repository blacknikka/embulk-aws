resource "aws_iam_instance_profile" "instance_profile" {
  name = "instance_profile"
  role = aws_iam_role.instance_role.name
}

resource "aws_iam_role" "instance_role" {
  name               = "instance_role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
EOF
}

data "template_file" "policy" {
  template = file("${path.module}/policy.json")

  vars = {
    bucket_arn = var.etl_bucket.arn
  }
}

resource "aws_iam_role_policy" "instance_role_policy" {
  name   = "instance_role_policy"
  role   = aws_iam_role.instance_role.id
  policy = data.template_file.policy.rendered
}
