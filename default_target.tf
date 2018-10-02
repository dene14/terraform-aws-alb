resource "aws_alb_target_group" "default" {
  name     = "${var.environment}-${var.name}-default-target"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "${var.vpc_id}"
}
