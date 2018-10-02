output "security_group" {
  value = "${aws_security_group.alb.id}"
}

output "http_listener" {
  value = "${aws_alb_listener.http.arn}"
}

output "https_listener" {
  value = "${aws_alb_listener.https.arn}"
}

output "default_target_group" {
  value = "${aws_alb_target_group.default.arn}"
}