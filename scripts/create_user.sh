#!/bin/bash
source ./scripts/ui.sh

info "Creating Matrix user"
read -p "Username: " USER
read -s -p "Password: " PASS
echo

docker exec -it synapse register_new_matrix_user -u "$USER" -p "$PASS" -a http://localhost:8008  && success "User created" || error "User creation failed"
