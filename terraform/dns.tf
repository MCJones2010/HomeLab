resource "cloudflare_record" "homelab" {
  zone_id = var.cf_zone_id
  name    = "@"
  type    = "A"
  value   = var.wan_ip
  ttl     = 300
  proxied = true
}
