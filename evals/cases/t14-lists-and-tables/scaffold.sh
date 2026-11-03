#!/usr/bin/env bash
set -euo pipefail
bash "$(dirname "$0")/../../fixtures/pantry-history.sh"
cp -R "$(dirname "$0")/../../fixtures/pantry-status/." .
