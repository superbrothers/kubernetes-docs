#!/usr/bin/env bash

set -e -o pipefail

version="$1"
if [[ -z "$version" ]]; then
  echo "Usage: $0 <version>" >&2
  exit 1
fi

cd docs/
git add .
git commit -m "Generate kubectl docs for $version"
git push origin docs
git tag "$version"
git push origin "$version"
# vim: ai ts=2 sw=2 et sts=2 ft=sh
