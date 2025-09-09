#!/bin/bash
# Lint all YAML files before pushing to GitOps repo
for file in $(find . -name "*.yaml"); do
  yamllint "$file" || exit 1
done
echo "All YAML configs passed linting ✅"
