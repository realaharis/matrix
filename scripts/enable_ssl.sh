#!/bin/bash
source ./scripts/ui.sh

info "Installing Certbot"
apt install -y certbot python3-certbot-nginx || error "Certbot install failed"

info "Enabling HTTPS"
certbot --nginx -d matrix.example.com --non-interactive --agree-tos -m admin@example.com || error "SSL failed"
success "HTTPS enabled"
