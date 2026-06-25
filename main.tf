resource "aws_security_group" "main" {
  name        = local.common_name
  description = "Allow traffic for ${var.sg_name} project ${var.project}"
  vpc_id      = var.vpc_id

   # we can use egress trafic rules here because we don't change it

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

    tags = merge (
      var.sg_tags,
      local.common_tags
  )

 
}