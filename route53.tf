resource "aws_route53_zone" "example" {
  name = "geo-terraform-test.com"
}

resource "aws_route53_record" "server1-record" {
  zone_id = aws_route53_zone.example.zone_id
  name    = "instance-test.geo-terraform-test.com"
  type    = "A"
  ttl     = "300"
  records = [aws_instance.web_instance.private_ip]
}
