resource "aws_alb" "alb" {
  name            = "${var.environment}-${var.name}"
  internal        = var.internal
  security_groups = concat([aws_security_group.alb.id], var.additional_security_groups)
  subnets         = var.subnets
  load_balancer_type = var.type
  idle_timeout    = var.idle_timeout

  enable_deletion_protection = false

#  access_logs = "${var.access_logs}"
#  access_logs {
#    bucket  = "${var.logs_bucket}"
#    bucket  = "this.bucket.doesnt.exist"
#    prefix  = "${var.environment}-${var.name}"
#    enabled = "${var.logs_bucket == "__NOT_DEFINED__" ? false : true}"
#  }

  tags = {
    Environment = "${var.environment}"
  }
}
