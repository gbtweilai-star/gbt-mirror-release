#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
PYTHONPATH=src python -m gbt_mirror_release info
PYTHONPATH=src python -m gbt_mirror_release check --payload '{}'
PYTHONPATH=src python -m gbt_mirror_release run   --payload '{}'
