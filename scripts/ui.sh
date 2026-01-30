#!/bin/bash
info(){ echo -e "\033[1;34m[i]\033[0m $1"; }
success(){ echo -e "\033[1;32m[✓]\033[0m $1"; }
error(){ echo -e "\033[1;31m[x]\033[0m $1"; exit 1; }
