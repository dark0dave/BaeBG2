#!/usr/bin/env bash
set -euo pipefail

main() {
  extension=$( echo "${1}" | awk -F '.' '{print $NF}' )
  weidu --nogame --parse-check "${extension}" "${1}"
}

main $@
