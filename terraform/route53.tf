resource "aws_route53_record" "api" {
  zone_id = var.route53_hosted_zone_id
  name    = var.hostname
  type    = "CNAME"
  ttl     = 300
  records = [data.aws_lb.api.dns_name]
}
