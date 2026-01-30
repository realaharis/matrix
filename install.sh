#!/bin/bash
source ./scripts/ui.sh

info "Starting Matrix One-Command Installer"

./scripts/check_requirements.sh
./scripts/setup_matrix.sh
./scripts/setup_nginx.sh
./scripts/enable_ssl.sh

success "Matrix installation completed"
info "You can now create users using ./scripts/create_user.sh"
