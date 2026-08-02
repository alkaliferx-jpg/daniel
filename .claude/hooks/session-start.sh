#!/bin/bash
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

npm install -g ui-ux-pro-max-cli >/dev/null 2>&1 || true
uipro init --ai claude --global >/dev/null 2>&1 || true

echo "UI/UX Pro Max skills ready."
