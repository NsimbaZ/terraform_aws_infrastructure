resource "aws_route53_zone" "utc-app" {
  name = "utc-app.com"
}

resource "aws_route53_record" "utc-app-ns" {
  zone_id = aws_route53_zone.utc-app.zone_id
  name    = "dev.utc-app.com"
  type    = "NS"
  ttl     = "30" # time before expiration of record from cache (in seconds)
  records = [aws_eip.lb.public_ip]
}