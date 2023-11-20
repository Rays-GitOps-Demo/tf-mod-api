data "aws_route53_zone" "test" {
  name = "${var.domain}."
}
