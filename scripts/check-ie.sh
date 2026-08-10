#!/usr/bin/env bash
set -euo pipefail

function main() {
  name=$(basename -z "${1}" | cut -f1 -d '.' | wc -m)
  if [[ "${name}" -gt 9 ]]; then
    echo "Error found: ${1} which is larger than 8 characters";
    exit 1;
  fi
}

main $@
