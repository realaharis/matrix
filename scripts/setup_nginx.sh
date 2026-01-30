#!/bin/bash
source ./scripts/ui.sh

info "Installing Nginx"
apt install -y nginx || error "Nginx install failed"
success "Nginx installed"

info "Configuring Nginx"
cp nginx/matrix.conf /etc/nginx/sites-available/matrix
ln -sf /etc/nginx/sites-available/matrix /etc/nginx/sites-enabled/
nginx -t || error "Nginx config error"
systemctl reload nginx
success "Nginx configured"
