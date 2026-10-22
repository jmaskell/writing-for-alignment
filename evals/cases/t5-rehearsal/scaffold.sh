#!/usr/bin/env bash
set -euo pipefail
bash "$(dirname "$0")/../../fixtures/pantry-history.sh"
mkdir -p docs
cp "$(dirname "$0")/../../fixtures/pantry-draft/docs/briefing.md" docs/briefing.md
