#!/bin/bash
source ./scripts/ui.sh

info "Starting Matrix containers"
docker compose up -d || error "Matrix failed"
success "Matrix running"
