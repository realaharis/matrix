#!/bin/bash
source ./scripts/ui.sh

info "Checking Docker..."
command -v docker >/dev/null || curl -fsSL https://get.docker.com | sh || error "Docker install failed"
success "Docker ready"

info "Checking docker-compose..."
command -v docker-compose >/dev/null || apt install -y docker-compose || error "Compose install failed"
success "Docker Compose ready"
