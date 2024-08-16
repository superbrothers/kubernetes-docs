#!/usr/bin/env bash

set -e -x -o pipefail

# apt-get -qq update && apt-get install -qqy rsync
git clone --depth 1 --branch $KUBERNETES_VERSION https://github.com/kubernetes/kubernetes.git $GOPATH/src/k8s.io/kubernetes
cd $GOPATH/src/k8s.io/kubernetes
hack/update-generated-docs.sh

for file in $(find docs -name "*.md"); do
  mkdir -p "/output/$(dirname "$file")"
  # remove generated cobra version comment for making diff easy to see
  head -n -1 "$file" > "/output/${file}"
done
# vim: ai ts=2 sw=2 et sts=2 ft=sh
