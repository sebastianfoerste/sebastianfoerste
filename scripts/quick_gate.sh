#!/usr/bin/env bash
# Local tooling looks for this file as the repository's quick gate. It runs the
# static profile proof check, so the gate is the real checker.
cd "$(dirname "$0")/.." && exec bash scripts/check-profile.sh
