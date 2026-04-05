#!/usr/bin/env bash
set -e

# Path
PROJECT_DIR="$(pwd)"
TF_CONT_IMG="hashicorp/terraform:latest"

podman run --rm -it -v "$PROJECT_DIR":/workspace -w /workspace/terraform "$TF_CONT_IMG" "$@"
