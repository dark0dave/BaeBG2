#!/usr/bin/env bash
set -euo pipefail

retraify() {
  weidu --nogame --untraify-tra "${2}" --untraify-d "${1}"
  sed -i 's/ \/\*.*\*\///g' "${1}"
  weidu --nogame --traify-comment --traify-old-tra "${2}" --traify "${1}"
  mv "${1::-4}.tra" "${2}"
  chmod 644 "${1}"
}

main() {
  for file in $( find . -type f -iname "*.tp2" ); do
    retraify "${file}" k0_iskp/lang/english/weidu.tra
  done
}

main
